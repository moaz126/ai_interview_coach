import 'package:flutter_bloc/flutter_bloc.dart';

import '../domain/entities/chat_message.dart';
import '../domain/entities/interview_session.dart';
import '../domain/usecases/save_session_usecase.dart';
import '../domain/usecases/send_message_usecase.dart';
import 'interview_state.dart';

/// Cubit managing the interview session lifecycle.
///
/// Registered as [registerFactory] so each session gets fresh state.
class InterviewCubit extends Cubit<InterviewState> {
  final SendMessageUseCase _sendMessageUseCase;
  final SaveSessionUseCase _saveSessionUseCase;

  String _topic = '';
  String _difficulty = '';
  int _sessionLength = 10;
  int _questionsAsked = 0;
  final List<ChatMessage> _messages = [];
  final List<int> _scores = [];

  InterviewCubit({
    required SendMessageUseCase sendMessageUseCase,
    required SaveSessionUseCase saveSessionUseCase,
  })  : _sendMessageUseCase = sendMessageUseCase,
        _saveSessionUseCase = saveSessionUseCase,
        super(const InterviewInitial());

  /// Initializes the interview session and requests the first question.
  Future<void> init({
    required String topic,
    required String difficulty,
    required int sessionLength,
  }) async {
    _topic = topic;
    _difficulty = difficulty;
    _sessionLength = sessionLength;
    _questionsAsked = 0;
    _messages.clear();
    _scores.clear();

    emit(InterviewLoading(messages: List.unmodifiable(_messages)));

    final result = await _sendMessageUseCase(
      topic: _topic,
      difficulty: _difficulty,
      history: _messages,
      userMessage: '',
    );

    if (result.failure != null) {
      emit(InterviewError(
        message: result.failure!.message,
        messages: List.unmodifiable(_messages),
      ));
      return;
    }

    final feedback = result.feedback!;

    // Add the AI's first question as an assistant message
    _messages.add(ChatMessage(
      role: 'assistant',
      content: feedback.nextQuestion,
      timestamp: DateTime.now(),
    ));

    _questionsAsked++;

    emit(InterviewLoaded(
      messages: List.unmodifiable(_messages),
      feedback: feedback,
      questionsAsked: _questionsAsked,
      sessionLength: _sessionLength,
    ));
  }

  /// Sends the user's answer and processes AI feedback.
  Future<void> sendMessage(String userMessage) async {
    if (userMessage.trim().isEmpty) return;

    // Add user message to history
    _messages.add(ChatMessage(
      role: 'user',
      content: userMessage,
      timestamp: DateTime.now(),
    ));

    emit(InterviewLoading(messages: List.unmodifiable(_messages)));

    final result = await _sendMessageUseCase(
      topic: _topic,
      difficulty: _difficulty,
      history: _messages,
      userMessage: '',
    );

    if (result.failure != null) {
      emit(InterviewError(
        message: result.failure!.message,
        messages: List.unmodifiable(_messages),
      ));
      return;
    }

    final feedback = result.feedback!;

    // Track score if this is a feedback response
    if (feedback.type == 'feedback' && feedback.score != null) {
      _scores.add(feedback.score!);
    }

    // Add the AI's response as an assistant message
    _messages.add(ChatMessage(
      role: 'assistant',
      content: feedback.nextQuestion,
      timestamp: DateTime.now(),
    ));

    _questionsAsked++;

    // Check if session is complete (Fix 5)
    if (_questionsAsked >= _sessionLength) {
      final avgScore = _scores.isEmpty
          ? 0.0
          : _scores.reduce((a, b) => a + b) / _scores.length;

      final session = InterviewSession(
        topic: _topic,
        difficulty: _difficulty,
        messages: List.unmodifiable(_messages),
        avgScore: avgScore,
        createdAt: DateTime.now(),
      );

      // Save session to local storage
      await _saveSessionUseCase(session);

      emit(InterviewSessionComplete(session: session));
      return;
    }

    emit(InterviewLoaded(
      messages: List.unmodifiable(_messages),
      feedback: feedback,
      questionsAsked: _questionsAsked,
      sessionLength: _sessionLength,
    ));
  }
}
