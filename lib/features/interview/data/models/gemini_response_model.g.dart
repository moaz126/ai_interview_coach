// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gemini_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GeminiResponseModelImpl _$$GeminiResponseModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GeminiResponseModelImpl(
      candidates: (json['candidates'] as List<dynamic>)
          .map((e) => GeminiCandidate.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GeminiResponseModelImplToJson(
        _$GeminiResponseModelImpl instance) =>
    <String, dynamic>{
      'candidates': instance.candidates,
    };

_$GeminiCandidateImpl _$$GeminiCandidateImplFromJson(
        Map<String, dynamic> json) =>
    _$GeminiCandidateImpl(
      content: GeminiCandidateContent.fromJson(
          json['content'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GeminiCandidateImplToJson(
        _$GeminiCandidateImpl instance) =>
    <String, dynamic>{
      'content': instance.content,
    };

_$GeminiCandidateContentImpl _$$GeminiCandidateContentImplFromJson(
        Map<String, dynamic> json) =>
    _$GeminiCandidateContentImpl(
      parts: (json['parts'] as List<dynamic>)
          .map((e) => GeminiCandidatePart.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GeminiCandidateContentImplToJson(
        _$GeminiCandidateContentImpl instance) =>
    <String, dynamic>{
      'parts': instance.parts,
    };

_$GeminiCandidatePartImpl _$$GeminiCandidatePartImplFromJson(
        Map<String, dynamic> json) =>
    _$GeminiCandidatePartImpl(
      text: json['text'] as String,
    );

Map<String, dynamic> _$$GeminiCandidatePartImplToJson(
        _$GeminiCandidatePartImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
    };
