// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hive_chat_message.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HiveChatMessageAdapter extends TypeAdapter<HiveChatMessage> {
  @override
  final int typeId = 0;

  @override
  HiveChatMessage read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HiveChatMessage()
      ..role = fields[0] as String
      ..content = fields[1] as String
      ..timestamp = fields[2] as DateTime;
  }

  @override
  void write(BinaryWriter writer, HiveChatMessage obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.role)
      ..writeByte(1)
      ..write(obj.content)
      ..writeByte(2)
      ..write(obj.timestamp);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HiveChatMessageAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
