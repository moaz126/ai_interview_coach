import 'package:hive/hive.dart';

import 'hive_chat_message.dart';

part 'hive_interview_session.g.dart';

/// Plain Hive class for persisting interview sessions locally.
/// NO freezed annotations — freezed models live in data/models/.
@HiveType(typeId: 1)
class HiveInterviewSession extends HiveObject {
  @HiveField(0)
  late String topic;

  @HiveField(1)
  late String difficulty;

  @HiveField(2)
  late List<HiveChatMessage> messages;

  @HiveField(3)
  late double avgScore;

  @HiveField(4)
  late DateTime createdAt;

  HiveInterviewSession();

  HiveInterviewSession.create({
    required this.topic,
    required this.difficulty,
    required this.messages,
    required this.avgScore,
    required this.createdAt,
  });
}
