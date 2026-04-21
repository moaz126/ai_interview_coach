import 'package:dio/dio.dart';

import '../../../../../core/constants/ai_provider_config.dart';
import '../../../../../core/error/exceptions.dart';
import '../../../../../core/utils/json_sanitizer.dart';
import '../../../domain/entities/chat_message.dart';
import '../../models/ai_feedback_model.dart';
import '../ai_remote_datasource.dart';
import '../mixins/role_validation_mixin.dart';

class GeminiDataSource with RoleValidationMixin implements AiRemoteDataSource {
  final Dio dio;
  final AiProviderConfig config;

  GeminiDataSource({required this.dio, required this.config});

  @override
  Future<AiFeedbackModel> sendMessage({
    required String topic,
    required String difficulty,
    required List<ChatMessage> history,
    required String userMessage,
  }) async {
    try {
      final systemPrompt = buildSystemPrompt(topic, difficulty);
      final contents = buildValidatedContents(
        history,
        userMessage,
        config.type,
      );

      final requestData = {
        'system_instruction': {
          'parts': [
            {'text': systemPrompt},
          ],
        },
        'contents': contents,
        'generationConfig': {'maxOutputTokens': 600, 'temperature': 0.7},
      };

      final response = await dio.post(
        '${config.baseUrl}/models/${config.model}:generateContent?key=${config.apiKey}',
        data: requestData,
      );

      final text =
          response.data['candidates'][0]['content']['parts'][0]['text']
              as String;

      final parsed = JsonSanitizer.tryParse(text);
      if (parsed == null) {
        throw const ServerException('Invalid AI response format');
      }

      final type = parsed['type'] as String?;
      if (type == 'feedback') {
        return AiFeedbackModel.fromJson(parsed);
      } else if (type == 'question') {
        final question =
            parsed['question'] as String? ??
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
}
