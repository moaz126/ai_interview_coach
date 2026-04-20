import 'package:equatable/equatable.dart';

import 'chat_message.dart';

/// Domain entity representing a complete interview session.
class InterviewSession extends Equatable {
  final String topic;
  final String difficulty;
  final List<ChatMessage> messages;
  final double avgScore;
  final DateTime createdAt;

  const InterviewSession({
    required this.topic,
    required this.difficulty,
    required this.messages,
    required this.avgScore,
    required this.createdAt,
  });

  @override
  List<Object?> get props => [topic, difficulty, messages, avgScore, createdAt];
}
