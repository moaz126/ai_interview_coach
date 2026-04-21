import '../../../../../core/constants/ai_provider_config.dart';
import '../../../domain/entities/chat_message.dart';

class _RoleContent {
  final String role;
  String content;

  _RoleContent({required this.role, required this.content});
}

mixin RoleValidationMixin {
  /// Validates and builds contents list for AI API.
  ///
  /// Rules enforced:
  /// 1. Map role based on provider
  /// 2. Merge consecutive same-role messages
  /// 3. Ensure first message has role 'user'
  List<Map<String, dynamic>> buildValidatedContents(
    List<ChatMessage> history,
    String userMessage,
    AiProviderType type,
  ) {
    // Build raw list of role/content pairs
    final rawMessages = <_RoleContent>[];

    for (final msg in history) {
      String apiRole = msg.role;
      if (msg.role == 'assistant') {
        apiRole = type == AiProviderType.gemini ? 'model' : 'assistant';
      }
      rawMessages.add(_RoleContent(role: apiRole, content: msg.content));
    }

    // Add current user message if non-empty (empty on init)
    if (userMessage.isNotEmpty) {
      rawMessages.add(_RoleContent(role: 'user', content: userMessage));
    }

    // If empty (first call), add a placeholder user message
    if (rawMessages.isEmpty) {
      rawMessages.add(
        _RoleContent(
          role: 'user',
          content: 'Start the interview. Ask me your first question.',
        ),
      );
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
      merged.add(
        _RoleContent(
          role: 'user',
          content: 'Start the interview. Ask me your first question.',
        ),
      );
    }

    if (type == AiProviderType.gemini) {
      return merged
          .map(
            (m) => {
              'role': m.role,
              'parts': [
                {'text': m.content},
              ],
            },
          )
          .toList();
    } else {
      return merged.map((m) => {'role': m.role, 'content': m.content}).toList();
    }
  }

  /// Builds the system prompt for the interviewer persona.
  String buildSystemPrompt(String topic, String difficulty) {
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
}
