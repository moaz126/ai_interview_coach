import 'package:freezed_annotation/freezed_annotation.dart';

part 'ai_feedback_model.freezed.dart';
part 'ai_feedback_model.g.dart';

/// Freezed model for AI feedback from Gemini.
/// Supports both 'question' type (first message) and 'feedback' type.
/// NO Hive annotations — Hive uses separate plain classes in data/local/.
@freezed
class AiFeedbackModel with _$AiFeedbackModel {
  const factory AiFeedbackModel({
    required String type,
    @JsonKey(name: 'next_question') required String nextQuestion,
    int? score,
    String? strengths,
    String? gaps,
    @JsonKey(name: 'model_answer') String? modelAnswer,
  }) = _AiFeedbackModel;

  /// Factory for question-only responses (first message from AI).
  factory AiFeedbackModel.questionOnly(String question) =>
      AiFeedbackModel(type: 'question', nextQuestion: question);

  factory AiFeedbackModel.fromJson(Map<String, dynamic> json) =>
      _$AiFeedbackModelFromJson(json);
}
