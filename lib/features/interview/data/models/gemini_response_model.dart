import 'package:freezed_annotation/freezed_annotation.dart';

part 'gemini_response_model.freezed.dart';
part 'gemini_response_model.g.dart';

/// Freezed model for the Gemini generateContent response.
@freezed
class GeminiResponseModel with _$GeminiResponseModel {
  const factory GeminiResponseModel({
    required List<GeminiCandidate> candidates,
  }) = _GeminiResponseModel;

  factory GeminiResponseModel.fromJson(Map<String, dynamic> json) =>
      _$GeminiResponseModelFromJson(json);
}

@freezed
class GeminiCandidate with _$GeminiCandidate {
  const factory GeminiCandidate({required GeminiCandidateContent content}) =
      _GeminiCandidate;

  factory GeminiCandidate.fromJson(Map<String, dynamic> json) =>
      _$GeminiCandidateFromJson(json);
}

@freezed
class GeminiCandidateContent with _$GeminiCandidateContent {
  const factory GeminiCandidateContent({
    required List<GeminiCandidatePart> parts,
  }) = _GeminiCandidateContent;

  factory GeminiCandidateContent.fromJson(Map<String, dynamic> json) =>
      _$GeminiCandidateContentFromJson(json);
}

@freezed
class GeminiCandidatePart with _$GeminiCandidatePart {
  const factory GeminiCandidatePart({required String text}) =
      _GeminiCandidatePart;

  factory GeminiCandidatePart.fromJson(Map<String, dynamic> json) =>
      _$GeminiCandidatePartFromJson(json);
}
