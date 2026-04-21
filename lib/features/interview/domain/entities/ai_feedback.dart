import 'package:equatable/equatable.dart';

/// Domain entity representing AI feedback on a candidate's answer.
class AiFeedback extends Equatable {
  final String type;
  final String nextQuestion;
  final int? score;
  final String? strengths;
  final String? gaps;
  final String? modelAnswer;

  const AiFeedback({
    required this.type,
    required this.nextQuestion,
    this.score,
    this.strengths,
    this.gaps,
    this.modelAnswer,
  });

  @override
  List<Object?> get props => [
    type,
    nextQuestion,
    score,
    strengths,
    gaps,
    modelAnswer,
  ];
}
