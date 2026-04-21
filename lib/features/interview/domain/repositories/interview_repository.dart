import '../../../../core/error/failures.dart';
import '../entities/ai_feedback.dart';
import '../entities/chat_message.dart';
import '../entities/interview_session.dart';

/// Abstract repository interface for interview operations.
///
/// Implementations handle the concrete data sources (remote + local).
abstract class InterviewRepository {
  /// Sends a message to the AI and returns feedback.
  ///
  /// [topic] and [difficulty] configure the interview context.
  /// [history] contains the conversation so far.
  /// [userMessage] is the latest user input (empty string for init).
  ///
  /// Returns either a [Failure] or [AiFeedback].
  Future<({Failure? failure, AiFeedback? feedback})> sendMessage({
    required String topic,
    required String difficulty,
    required List<ChatMessage> history,
    required String userMessage,
  });

  /// Saves a completed interview session to local storage.
  Future<({Failure? failure})> saveSession(InterviewSession session);

  /// Retrieves all saved interview sessions from local storage.
  Future<({Failure? failure, List<InterviewSession>? sessions})>
  getSessionHistory();
}
