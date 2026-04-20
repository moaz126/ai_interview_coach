import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_message_model.freezed.dart';
part 'chat_message_model.g.dart';

/// Freezed model for chat messages in Gemini API requests/responses.
/// NO Hive annotations — Hive uses separate plain classes in data/local/.
@freezed
class ChatMessageModel with _$ChatMessageModel {
  const factory ChatMessageModel({
    required String role,
    required String content,
  }) = _ChatMessageModel;

  factory ChatMessageModel.fromJson(Map<String, dynamic> json) =>
      _$ChatMessageModelFromJson(json);
}
