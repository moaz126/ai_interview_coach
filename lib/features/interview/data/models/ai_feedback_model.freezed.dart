// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ai_feedback_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

AiFeedbackModel _$AiFeedbackModelFromJson(Map<String, dynamic> json) {
  return _AiFeedbackModel.fromJson(json);
}

/// @nodoc
mixin _$AiFeedbackModel {
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'next_question')
  String get nextQuestion => throw _privateConstructorUsedError;
  int? get score => throw _privateConstructorUsedError;
  String? get strengths => throw _privateConstructorUsedError;
  String? get gaps => throw _privateConstructorUsedError;
  @JsonKey(name: 'model_answer')
  String? get modelAnswer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AiFeedbackModelCopyWith<AiFeedbackModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AiFeedbackModelCopyWith<$Res> {
  factory $AiFeedbackModelCopyWith(
    AiFeedbackModel value,
    $Res Function(AiFeedbackModel) then,
  ) = _$AiFeedbackModelCopyWithImpl<$Res, AiFeedbackModel>;
  @useResult
  $Res call({
    String type,
    @JsonKey(name: 'next_question') String nextQuestion,
    int? score,
    String? strengths,
    String? gaps,
    @JsonKey(name: 'model_answer') String? modelAnswer,
  });
}

/// @nodoc
class _$AiFeedbackModelCopyWithImpl<$Res, $Val extends AiFeedbackModel>
    implements $AiFeedbackModelCopyWith<$Res> {
  _$AiFeedbackModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? nextQuestion = null,
    Object? score = freezed,
    Object? strengths = freezed,
    Object? gaps = freezed,
    Object? modelAnswer = freezed,
  }) {
    return _then(
      _value.copyWith(
            type: null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as String,
            nextQuestion: null == nextQuestion
                ? _value.nextQuestion
                : nextQuestion // ignore: cast_nullable_to_non_nullable
                      as String,
            score: freezed == score
                ? _value.score
                : score // ignore: cast_nullable_to_non_nullable
                      as int?,
            strengths: freezed == strengths
                ? _value.strengths
                : strengths // ignore: cast_nullable_to_non_nullable
                      as String?,
            gaps: freezed == gaps
                ? _value.gaps
                : gaps // ignore: cast_nullable_to_non_nullable
                      as String?,
            modelAnswer: freezed == modelAnswer
                ? _value.modelAnswer
                : modelAnswer // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AiFeedbackModelImplCopyWith<$Res>
    implements $AiFeedbackModelCopyWith<$Res> {
  factory _$$AiFeedbackModelImplCopyWith(
    _$AiFeedbackModelImpl value,
    $Res Function(_$AiFeedbackModelImpl) then,
  ) = __$$AiFeedbackModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String type,
    @JsonKey(name: 'next_question') String nextQuestion,
    int? score,
    String? strengths,
    String? gaps,
    @JsonKey(name: 'model_answer') String? modelAnswer,
  });
}

/// @nodoc
class __$$AiFeedbackModelImplCopyWithImpl<$Res>
    extends _$AiFeedbackModelCopyWithImpl<$Res, _$AiFeedbackModelImpl>
    implements _$$AiFeedbackModelImplCopyWith<$Res> {
  __$$AiFeedbackModelImplCopyWithImpl(
    _$AiFeedbackModelImpl _value,
    $Res Function(_$AiFeedbackModelImpl) _then,
  ) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? nextQuestion = null,
    Object? score = freezed,
    Object? strengths = freezed,
    Object? gaps = freezed,
    Object? modelAnswer = freezed,
  }) {
    return _then(
      _$AiFeedbackModelImpl(
        type: null == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as String,
        nextQuestion: null == nextQuestion
            ? _value.nextQuestion
            : nextQuestion // ignore: cast_nullable_to_non_nullable
                  as String,
        score: freezed == score
            ? _value.score
            : score // ignore: cast_nullable_to_non_nullable
                  as int?,
        strengths: freezed == strengths
            ? _value.strengths
            : strengths // ignore: cast_nullable_to_non_nullable
                  as String?,
        gaps: freezed == gaps
            ? _value.gaps
            : gaps // ignore: cast_nullable_to_non_nullable
                  as String?,
        modelAnswer: freezed == modelAnswer
            ? _value.modelAnswer
            : modelAnswer // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AiFeedbackModelImpl implements _AiFeedbackModel {
  const _$AiFeedbackModelImpl({
    required this.type,
    @JsonKey(name: 'next_question') required this.nextQuestion,
    this.score,
    this.strengths,
    this.gaps,
    @JsonKey(name: 'model_answer') this.modelAnswer,
  });

  factory _$AiFeedbackModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AiFeedbackModelImplFromJson(json);

  @override
  final String type;
  @override
  @JsonKey(name: 'next_question')
  final String nextQuestion;
  @override
  final int? score;
  @override
  final String? strengths;
  @override
  final String? gaps;
  @override
  @JsonKey(name: 'model_answer')
  final String? modelAnswer;

  @override
  String toString() {
    return 'AiFeedbackModel(type: $type, nextQuestion: $nextQuestion, score: $score, strengths: $strengths, gaps: $gaps, modelAnswer: $modelAnswer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AiFeedbackModelImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.nextQuestion, nextQuestion) ||
                other.nextQuestion == nextQuestion) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.strengths, strengths) ||
                other.strengths == strengths) &&
            (identical(other.gaps, gaps) || other.gaps == gaps) &&
            (identical(other.modelAnswer, modelAnswer) ||
                other.modelAnswer == modelAnswer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    type,
    nextQuestion,
    score,
    strengths,
    gaps,
    modelAnswer,
  );

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AiFeedbackModelImplCopyWith<_$AiFeedbackModelImpl> get copyWith =>
      __$$AiFeedbackModelImplCopyWithImpl<_$AiFeedbackModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$AiFeedbackModelImplToJson(this);
  }
}

abstract class _AiFeedbackModel implements AiFeedbackModel {
  const factory _AiFeedbackModel({
    required final String type,
    @JsonKey(name: 'next_question') required final String nextQuestion,
    final int? score,
    final String? strengths,
    final String? gaps,
    @JsonKey(name: 'model_answer') final String? modelAnswer,
  }) = _$AiFeedbackModelImpl;

  factory _AiFeedbackModel.fromJson(Map<String, dynamic> json) =
      _$AiFeedbackModelImpl.fromJson;

  @override
  String get type;
  @override
  @JsonKey(name: 'next_question')
  String get nextQuestion;
  @override
  int? get score;
  @override
  String? get strengths;
  @override
  String? get gaps;
  @override
  @JsonKey(name: 'model_answer')
  String? get modelAnswer;
  @override
  @JsonKey(ignore: true)
  _$$AiFeedbackModelImplCopyWith<_$AiFeedbackModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
