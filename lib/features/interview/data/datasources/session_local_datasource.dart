import 'package:hive/hive.dart';

import '../../domain/entities/chat_message.dart';
import '../../domain/entities/interview_session.dart';
import '../local/hive_chat_message.dart';
import '../local/hive_interview_session.dart';

/// Abstract interface for local session storage.
abstract class SessionLocalDataSource {
  Future<void> saveSession(InterviewSession session);
  Future<List<InterviewSession>> getSessionHistory();
}

/// Implementation using Hive for local persistence.
class SessionLocalDataSourceImpl implements SessionLocalDataSource {
  final Box<HiveInterviewSession> _box;

  SessionLocalDataSourceImpl({required Box<HiveInterviewSession> box})
      : _box = box;

  @override
  Future<void> saveSession(InterviewSession session) async {
    final hiveSession = session.toHive();
    await _box.add(hiveSession);
  }

  @override
  Future<List<InterviewSession>> getSessionHistory() async {
    return _box.values.map((hiveSession) => hiveSession.toEntity()).toList();
  }
}

// ---------------------------------------------------------------------------
// Extension mappers: Domain Entity ↔ Hive Object
// ---------------------------------------------------------------------------

/// Maps [HiveChatMessage] to domain [ChatMessage].
extension HiveChatMessageMapper on HiveChatMessage {
  ChatMessage toEntity() {
    return ChatMessage(
      role: role,
      content: content,
      timestamp: timestamp,
    );
  }
}

/// Maps domain [ChatMessage] to [HiveChatMessage].
extension ChatMessageToHive on ChatMessage {
  HiveChatMessage toHive() {
    return HiveChatMessage.create(
      role: role,
      content: content,
      timestamp: timestamp,
    );
  }
}

/// Maps [HiveInterviewSession] to domain [InterviewSession].
extension HiveInterviewSessionMapper on HiveInterviewSession {
  InterviewSession toEntity() {
    return InterviewSession(
      topic: topic,
      difficulty: difficulty,
      messages: messages.map((m) => m.toEntity()).toList(),
      avgScore: avgScore,
      createdAt: createdAt,
    );
  }
}

/// Maps domain [InterviewSession] to [HiveInterviewSession].
extension InterviewSessionToHive on InterviewSession {
  HiveInterviewSession toHive() {
    return HiveInterviewSession.create(
      topic: topic,
      difficulty: difficulty,
      messages: messages.map((m) => m.toHive()).toList(),
      avgScore: avgScore,
      createdAt: createdAt,
    );
  }
}
