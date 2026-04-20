import 'package:equatable/equatable.dart';

import '../domain/entities/ai_feedback.dart';
import '../domain/entities/chat_message.dart';
import '../domain/entities/interview_session.dart';

/// Base state for the interview feature.
abstract class InterviewState extends Equatable {
  const InterviewState();

  @override
  List<Object?> get props => [];
}

/// Initial state before an interview session starts.
class InterviewInitial extends InterviewState {
  const InterviewInitial();
}

/// Loading state — carries messages so chat history is preserved in UI.
class InterviewLoading extends InterviewState {
  final List<ChatMessage> messages;

  const InterviewLoading({required this.messages});

  @override
  List<Object?> get props => [messages];
}

/// Loaded state with chat history, latest feedback, and session tracking.
class InterviewLoaded extends InterviewState {
  final List<ChatMessage> messages;
  final AiFeedback? feedback;
  final int questionsAsked;
  final int sessionLength;

  const InterviewLoaded({
    required this.messages,
    this.feedback,
    required this.questionsAsked,
    required this.sessionLength,
  });

  @override
  List<Object?> get props => [messages, feedback, questionsAsked, sessionLength];
}

/// Session complete — triggers navigation to summary page.
class InterviewSessionComplete extends InterviewState {
  final InterviewSession session;

  const InterviewSessionComplete({required this.session});

  @override
  List<Object?> get props => [session];
}

/// Error state — carries messages so chat history is preserved on error.
class InterviewError extends InterviewState {
  final String message;
  final List<ChatMessage> messages;

  const InterviewError({required this.message, required this.messages});

  @override
  List<Object?> get props => [message, messages];
}
