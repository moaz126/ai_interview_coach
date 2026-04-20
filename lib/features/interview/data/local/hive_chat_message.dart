import 'package:hive/hive.dart';

part 'hive_chat_message.g.dart';

/// Plain Hive class for persisting chat messages locally.
/// NO freezed annotations — freezed models live in data/models/.
@HiveType(typeId: 0)
class HiveChatMessage extends HiveObject {
  @HiveField(0)
  late String role;

  @HiveField(1)
  late String content;

  @HiveField(2)
  late DateTime timestamp;

  HiveChatMessage();

  HiveChatMessage.create({
    required this.role,
    required this.content,
    required this.timestamp,
  });
}
