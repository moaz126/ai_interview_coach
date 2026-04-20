import '../../../../core/error/failures.dart';
import '../entities/ai_feedback.dart';
import '../entities/chat_message.dart';
import '../repositories/interview_repository.dart';

/// Use case for sending a message to the AI interviewer.
class SendMessageUseCase {
  final InterviewRepository _repository;

  SendMessageUseCase(this._repository);

  Future<({Failure? failure, AiFeedback? feedback})> call({
    required String topic,
    required String difficulty,
    required List<ChatMessage> history,
    required String userMessage,
  }) {
    return _repository.sendMessage(
      topic: topic,
      difficulty: difficulty,
      history: history,
      userMessage: userMessage,
    );
  }
}
