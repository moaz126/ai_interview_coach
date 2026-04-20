import 'package:equatable/equatable.dart';

/// Domain entity representing a single chat message.
class ChatMessage extends Equatable {
  final String role;
  final String content;
  final DateTime timestamp;

  const ChatMessage({
    required this.role,
    required this.content,
    required this.timestamp,
  });

  @override
  List<Object?> get props => [role, content, timestamp];
}
