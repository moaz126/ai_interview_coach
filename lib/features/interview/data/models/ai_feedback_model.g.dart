// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ai_feedback_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AiFeedbackModelImpl _$$AiFeedbackModelImplFromJson(
  Map<String, dynamic> json,
) => _$AiFeedbackModelImpl(
  type: json['type'] as String,
  nextQuestion: json['next_question'] as String,
  score: (json['score'] as num?)?.toInt(),
  strengths: json['strengths'] as String?,
  gaps: json['gaps'] as String?,
  modelAnswer: json['model_answer'] as String?,
);

Map<String, dynamic> _$$AiFeedbackModelImplToJson(
  _$AiFeedbackModelImpl instance,
) => <String, dynamic>{
  'type': instance.type,
  'next_question': instance.nextQuestion,
  'score': instance.score,
  'strengths': instance.strengths,
  'gaps': instance.gaps,
  'model_answer': instance.modelAnswer,
};
