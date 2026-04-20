import 'package:dio/dio.dart';

import '../../../../core/constants/api_constants.dart';
import '../../../../core/error/exceptions.dart';
import '../../../../core/network/dio_client.dart';
import '../../../../core/utils/json_sanitizer.dart';
import '../../domain/entities/chat_message.dart';
import '../models/ai_feedback_model.dart';
import '../models/gemini_request_model.dart';

/// Abstract interface for the Gemini remote data source.
abstract class GeminiRemoteDataSource {
  Future<AiFeedbackModel> sendMessage({
    required String topic,
    required String difficulty,
    required List<ChatMessage> history,
    required String userMessage,
  });
}

/// Implementation that calls the Gemini API.
class GeminiRemoteDataSourceImpl implements GeminiRemoteDataSource {
  final DioClient _dioClient;

  GeminiRemoteDataSourceImpl({required DioClient dio}) : _dioClient = dio;

  @override
  Future<AiFeedbackModel> sendMessage({
    required String topic,
    required String difficulty,
    required List<ChatMessage> history,
    required String userMessage,
  }) async {
    try {
      final systemPrompt = _buildSystemPrompt(topic, difficulty);
      final contents = _buildValidatedContents(history, userMessage);

      final request = GeminiRequestModel(
        systemInstruction: GeminiSystemInstruction(
          parts: [GeminiPart(text: systemPrompt)],
        ),
        contents: contents,
        generationConfig: const GeminiGenerationConfig(
          maxOutputTokens: 600,
          temperature: 0.7,
        ),
      );

      final response = await _dioClient.dio.post(
        ApiConstants.generateContentUrl,
        data: request.toJson(),
      );

      // Extract text from response: candidates[0].content.parts[0].text
      final text = response.data['candidates'][0]['content']['parts'][0]
          ['text'] as String;

      // Use JsonSanitizer to safely parse (Fix 3)
      final parsed = JsonSanitizer.tryParse(text);
      if (parsed == null) {
        throw const ServerException('Invalid AI response format');
      }

      // Route based on type (Fix 4)
      final type = parsed['type'] as String?;
      if (type == 'feedback') {
        return AiFeedbackModel.fromJson(parsed);
      } else if (type == 'question') {
        final question = parsed['question'] as String? ??
            parsed['next_question'] as String? ??
            '';
        return AiFeedbackModel.questionOnly(question);
      } else {
        throw ServerException('Unknown response type: $type');
      }
    } on DioException catch (e) {
      throw ServerException(
        e.response?.data?.toString() ?? e.message ?? 'Network error',
      );
    } on ServerException {
      rethrow;
    } catch (e) {
      throw ServerException('Unexpected error: $e');
    }
  }

  /// Builds the system prompt for the interviewer persona.
  String _buildSystemPrompt(String topic, String difficulty) {
    return '''You are a senior software engineer conducting a technical interview.
Topic: $topic
Difficulty: $difficulty

Rules:
- Ask ONE question at a time
- After user answers, respond ONLY in this exact JSON (no markdown, no backticks):
{
  "type": "feedback",
  "score": 4,
  "strengths": "What the candidate got right",
  "gaps": "What was missing or could be better",
  "model_answer": "Ideal answer in 2-3 sentences",
  "next_question": "Your next interview question"
}
- For your very first message respond ONLY as:
{
  "type": "question",
  "question": "Your first interview question"
}
- If user says 'I don't know', give a small hint and ask again
- Stay strictly on topic and difficulty level''';
  }

  /// Validates and builds contents list for Gemini API (Fix 2).
  ///
  /// Rules enforced:
  /// 1. Map role 'assistant' → 'model', 'user' stays 'user'
  /// 2. Merge consecutive same-role messages
  /// 3. Ensure first message has role 'user'
  List<GeminiContent> _buildValidatedContents(
    List<ChatMessage> history,
    String userMessage,
  ) {
    // Build raw list of role/content pairs
    final rawMessages = <_RoleContent>[];

    for (final msg in history) {
      final geminiRole = msg.role == 'assistant' ? 'model' : 'user';
      rawMessages.add(_RoleContent(role: geminiRole, content: msg.content));
    }

    // Add current user message if non-empty (empty on init)
    if (userMessage.isNotEmpty) {
      rawMessages.add(_RoleContent(role: 'user', content: userMessage));
    }

    // If empty (first call), add a placeholder user message
    if (rawMessages.isEmpty) {
      rawMessages.add(_RoleContent(
        role: 'user',
        content: 'Start the interview. Ask me your first question.',
      ));
    }

    // Merge consecutive same-role messages
    final merged = <_RoleContent>[];
    for (final msg in rawMessages) {
      if (merged.isNotEmpty && merged.last.role == msg.role) {
        merged.last.content += '\n\n${msg.content}';
      } else {
        merged.add(_RoleContent(role: msg.role, content: msg.content));
      }
    }

    // Ensure first message role is 'user'
    while (merged.isNotEmpty && merged.first.role != 'user') {
      merged.removeAt(0);
    }

    // If all messages were removed, add a default user message
    if (merged.isEmpty) {
      merged.add(_RoleContent(
        role: 'user',
        content: 'Start the interview. Ask me your first question.',
      ));
    }

    return merged
        .map((m) => GeminiContent(
              role: m.role,
              parts: [GeminiPart(text: m.content)],
            ))
        .toList();
  }
}

/// Helper class for role validation.
class _RoleContent {
  final String role;
  String content;

  _RoleContent({required this.role, required this.content});
}
