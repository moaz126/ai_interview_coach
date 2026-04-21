import '../../domain/entities/chat_message.dart';
import '../models/ai_feedback_model.dart';

/// Abstract interface for the AI remote data source.
abstract class AiRemoteDataSource {
  Future<AiFeedbackModel> sendMessage({
    required String topic,
    required String difficulty,
    required List<ChatMessage> history,
    required String userMessage,
  });
}
