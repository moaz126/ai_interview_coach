// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hive_interview_session.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HiveInterviewSessionAdapter extends TypeAdapter<HiveInterviewSession> {
  @override
  final int typeId = 1;

  @override
  HiveInterviewSession read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HiveInterviewSession()
      ..topic = fields[0] as String
      ..difficulty = fields[1] as String
      ..messages = (fields[2] as List).cast<HiveChatMessage>()
      ..avgScore = fields[3] as double
      ..createdAt = fields[4] as DateTime;
  }

  @override
  void write(BinaryWriter writer, HiveInterviewSession obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.topic)
      ..writeByte(1)
      ..write(obj.difficulty)
      ..writeByte(2)
      ..write(obj.messages)
      ..writeByte(3)
      ..write(obj.avgScore)
      ..writeByte(4)
      ..write(obj.createdAt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HiveInterviewSessionAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
