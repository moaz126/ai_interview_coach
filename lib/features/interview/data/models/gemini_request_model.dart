import 'package:freezed_annotation/freezed_annotation.dart';

part 'gemini_request_model.freezed.dart';
part 'gemini_request_model.g.dart';

/// Freezed model for the Gemini generateContent request body.
@freezed
class GeminiRequestModel with _$GeminiRequestModel {
  const factory GeminiRequestModel({
    @JsonKey(name: 'system_instruction')
    required GeminiSystemInstruction systemInstruction,
    required List<GeminiContent> contents,
    @JsonKey(name: 'generationConfig')
    required GeminiGenerationConfig generationConfig,
  }) = _GeminiRequestModel;

  factory GeminiRequestModel.fromJson(Map<String, dynamic> json) =>
      _$GeminiRequestModelFromJson(json);
}

@freezed
class GeminiSystemInstruction with _$GeminiSystemInstruction {
  const factory GeminiSystemInstruction({
    required List<GeminiPart> parts,
  }) = _GeminiSystemInstruction;

  factory GeminiSystemInstruction.fromJson(Map<String, dynamic> json) =>
      _$GeminiSystemInstructionFromJson(json);
}

@freezed
class GeminiContent with _$GeminiContent {
  const factory GeminiContent({
    required String role,
    required List<GeminiPart> parts,
  }) = _GeminiContent;

  factory GeminiContent.fromJson(Map<String, dynamic> json) =>
      _$GeminiContentFromJson(json);
}

@freezed
class GeminiPart with _$GeminiPart {
  const factory GeminiPart({
    required String text,
  }) = _GeminiPart;

  factory GeminiPart.fromJson(Map<String, dynamic> json) =>
      _$GeminiPartFromJson(json);
}

@freezed
class GeminiGenerationConfig with _$GeminiGenerationConfig {
  const factory GeminiGenerationConfig({
    @JsonKey(name: 'maxOutputTokens') required int maxOutputTokens,
    required double temperature,
  }) = _GeminiGenerationConfig;

  factory GeminiGenerationConfig.fromJson(Map<String, dynamic> json) =>
      _$GeminiGenerationConfigFromJson(json);
}
