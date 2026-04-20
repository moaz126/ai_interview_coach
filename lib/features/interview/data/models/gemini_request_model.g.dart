// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gemini_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GeminiRequestModelImpl _$$GeminiRequestModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GeminiRequestModelImpl(
      systemInstruction: GeminiSystemInstruction.fromJson(
          json['system_instruction'] as Map<String, dynamic>),
      contents: (json['contents'] as List<dynamic>)
          .map((e) => GeminiContent.fromJson(e as Map<String, dynamic>))
          .toList(),
      generationConfig: GeminiGenerationConfig.fromJson(
          json['generationConfig'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GeminiRequestModelImplToJson(
        _$GeminiRequestModelImpl instance) =>
    <String, dynamic>{
      'system_instruction': instance.systemInstruction,
      'contents': instance.contents,
      'generationConfig': instance.generationConfig,
    };

_$GeminiSystemInstructionImpl _$$GeminiSystemInstructionImplFromJson(
        Map<String, dynamic> json) =>
    _$GeminiSystemInstructionImpl(
      parts: (json['parts'] as List<dynamic>)
          .map((e) => GeminiPart.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GeminiSystemInstructionImplToJson(
        _$GeminiSystemInstructionImpl instance) =>
    <String, dynamic>{
      'parts': instance.parts,
    };

_$GeminiContentImpl _$$GeminiContentImplFromJson(Map<String, dynamic> json) =>
    _$GeminiContentImpl(
      role: json['role'] as String,
      parts: (json['parts'] as List<dynamic>)
          .map((e) => GeminiPart.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GeminiContentImplToJson(_$GeminiContentImpl instance) =>
    <String, dynamic>{
      'role': instance.role,
      'parts': instance.parts,
    };

_$GeminiPartImpl _$$GeminiPartImplFromJson(Map<String, dynamic> json) =>
    _$GeminiPartImpl(
      text: json['text'] as String,
    );

Map<String, dynamic> _$$GeminiPartImplToJson(_$GeminiPartImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
    };

_$GeminiGenerationConfigImpl _$$GeminiGenerationConfigImplFromJson(
        Map<String, dynamic> json) =>
    _$GeminiGenerationConfigImpl(
      maxOutputTokens: (json['maxOutputTokens'] as num).toInt(),
      temperature: (json['temperature'] as num).toDouble(),
    );

Map<String, dynamic> _$$GeminiGenerationConfigImplToJson(
        _$GeminiGenerationConfigImpl instance) =>
    <String, dynamic>{
      'maxOutputTokens': instance.maxOutputTokens,
      'temperature': instance.temperature,
    };
