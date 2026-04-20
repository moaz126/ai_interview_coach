// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gemini_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GeminiResponseModel _$GeminiResponseModelFromJson(Map<String, dynamic> json) {
  return _GeminiResponseModel.fromJson(json);
}

/// @nodoc
mixin _$GeminiResponseModel {
  List<GeminiCandidate> get candidates => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeminiResponseModelCopyWith<GeminiResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeminiResponseModelCopyWith<$Res> {
  factory $GeminiResponseModelCopyWith(
          GeminiResponseModel value, $Res Function(GeminiResponseModel) then) =
      _$GeminiResponseModelCopyWithImpl<$Res, GeminiResponseModel>;
  @useResult
  $Res call({List<GeminiCandidate> candidates});
}

/// @nodoc
class _$GeminiResponseModelCopyWithImpl<$Res, $Val extends GeminiResponseModel>
    implements $GeminiResponseModelCopyWith<$Res> {
  _$GeminiResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? candidates = null,
  }) {
    return _then(_value.copyWith(
      candidates: null == candidates
          ? _value.candidates
          : candidates // ignore: cast_nullable_to_non_nullable
              as List<GeminiCandidate>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GeminiResponseModelImplCopyWith<$Res>
    implements $GeminiResponseModelCopyWith<$Res> {
  factory _$$GeminiResponseModelImplCopyWith(_$GeminiResponseModelImpl value,
          $Res Function(_$GeminiResponseModelImpl) then) =
      __$$GeminiResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<GeminiCandidate> candidates});
}

/// @nodoc
class __$$GeminiResponseModelImplCopyWithImpl<$Res>
    extends _$GeminiResponseModelCopyWithImpl<$Res, _$GeminiResponseModelImpl>
    implements _$$GeminiResponseModelImplCopyWith<$Res> {
  __$$GeminiResponseModelImplCopyWithImpl(_$GeminiResponseModelImpl _value,
      $Res Function(_$GeminiResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? candidates = null,
  }) {
    return _then(_$GeminiResponseModelImpl(
      candidates: null == candidates
          ? _value._candidates
          : candidates // ignore: cast_nullable_to_non_nullable
              as List<GeminiCandidate>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GeminiResponseModelImpl implements _GeminiResponseModel {
  const _$GeminiResponseModelImpl(
      {required final List<GeminiCandidate> candidates})
      : _candidates = candidates;

  factory _$GeminiResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GeminiResponseModelImplFromJson(json);

  final List<GeminiCandidate> _candidates;
  @override
  List<GeminiCandidate> get candidates {
    if (_candidates is EqualUnmodifiableListView) return _candidates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_candidates);
  }

  @override
  String toString() {
    return 'GeminiResponseModel(candidates: $candidates)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeminiResponseModelImpl &&
            const DeepCollectionEquality()
                .equals(other._candidates, _candidates));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_candidates));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GeminiResponseModelImplCopyWith<_$GeminiResponseModelImpl> get copyWith =>
      __$$GeminiResponseModelImplCopyWithImpl<_$GeminiResponseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GeminiResponseModelImplToJson(
      this,
    );
  }
}

abstract class _GeminiResponseModel implements GeminiResponseModel {
  const factory _GeminiResponseModel(
          {required final List<GeminiCandidate> candidates}) =
      _$GeminiResponseModelImpl;

  factory _GeminiResponseModel.fromJson(Map<String, dynamic> json) =
      _$GeminiResponseModelImpl.fromJson;

  @override
  List<GeminiCandidate> get candidates;
  @override
  @JsonKey(ignore: true)
  _$$GeminiResponseModelImplCopyWith<_$GeminiResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GeminiCandidate _$GeminiCandidateFromJson(Map<String, dynamic> json) {
  return _GeminiCandidate.fromJson(json);
}

/// @nodoc
mixin _$GeminiCandidate {
  GeminiCandidateContent get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeminiCandidateCopyWith<GeminiCandidate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeminiCandidateCopyWith<$Res> {
  factory $GeminiCandidateCopyWith(
          GeminiCandidate value, $Res Function(GeminiCandidate) then) =
      _$GeminiCandidateCopyWithImpl<$Res, GeminiCandidate>;
  @useResult
  $Res call({GeminiCandidateContent content});

  $GeminiCandidateContentCopyWith<$Res> get content;
}

/// @nodoc
class _$GeminiCandidateCopyWithImpl<$Res, $Val extends GeminiCandidate>
    implements $GeminiCandidateCopyWith<$Res> {
  _$GeminiCandidateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as GeminiCandidateContent,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GeminiCandidateContentCopyWith<$Res> get content {
    return $GeminiCandidateContentCopyWith<$Res>(_value.content, (value) {
      return _then(_value.copyWith(content: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GeminiCandidateImplCopyWith<$Res>
    implements $GeminiCandidateCopyWith<$Res> {
  factory _$$GeminiCandidateImplCopyWith(_$GeminiCandidateImpl value,
          $Res Function(_$GeminiCandidateImpl) then) =
      __$$GeminiCandidateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({GeminiCandidateContent content});

  @override
  $GeminiCandidateContentCopyWith<$Res> get content;
}

/// @nodoc
class __$$GeminiCandidateImplCopyWithImpl<$Res>
    extends _$GeminiCandidateCopyWithImpl<$Res, _$GeminiCandidateImpl>
    implements _$$GeminiCandidateImplCopyWith<$Res> {
  __$$GeminiCandidateImplCopyWithImpl(
      _$GeminiCandidateImpl _value, $Res Function(_$GeminiCandidateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
  }) {
    return _then(_$GeminiCandidateImpl(
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as GeminiCandidateContent,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GeminiCandidateImpl implements _GeminiCandidate {
  const _$GeminiCandidateImpl({required this.content});

  factory _$GeminiCandidateImpl.fromJson(Map<String, dynamic> json) =>
      _$$GeminiCandidateImplFromJson(json);

  @override
  final GeminiCandidateContent content;

  @override
  String toString() {
    return 'GeminiCandidate(content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeminiCandidateImpl &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GeminiCandidateImplCopyWith<_$GeminiCandidateImpl> get copyWith =>
      __$$GeminiCandidateImplCopyWithImpl<_$GeminiCandidateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GeminiCandidateImplToJson(
      this,
    );
  }
}

abstract class _GeminiCandidate implements GeminiCandidate {
  const factory _GeminiCandidate(
      {required final GeminiCandidateContent content}) = _$GeminiCandidateImpl;

  factory _GeminiCandidate.fromJson(Map<String, dynamic> json) =
      _$GeminiCandidateImpl.fromJson;

  @override
  GeminiCandidateContent get content;
  @override
  @JsonKey(ignore: true)
  _$$GeminiCandidateImplCopyWith<_$GeminiCandidateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GeminiCandidateContent _$GeminiCandidateContentFromJson(
    Map<String, dynamic> json) {
  return _GeminiCandidateContent.fromJson(json);
}

/// @nodoc
mixin _$GeminiCandidateContent {
  List<GeminiCandidatePart> get parts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeminiCandidateContentCopyWith<GeminiCandidateContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeminiCandidateContentCopyWith<$Res> {
  factory $GeminiCandidateContentCopyWith(GeminiCandidateContent value,
          $Res Function(GeminiCandidateContent) then) =
      _$GeminiCandidateContentCopyWithImpl<$Res, GeminiCandidateContent>;
  @useResult
  $Res call({List<GeminiCandidatePart> parts});
}

/// @nodoc
class _$GeminiCandidateContentCopyWithImpl<$Res,
        $Val extends GeminiCandidateContent>
    implements $GeminiCandidateContentCopyWith<$Res> {
  _$GeminiCandidateContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parts = null,
  }) {
    return _then(_value.copyWith(
      parts: null == parts
          ? _value.parts
          : parts // ignore: cast_nullable_to_non_nullable
              as List<GeminiCandidatePart>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GeminiCandidateContentImplCopyWith<$Res>
    implements $GeminiCandidateContentCopyWith<$Res> {
  factory _$$GeminiCandidateContentImplCopyWith(
          _$GeminiCandidateContentImpl value,
          $Res Function(_$GeminiCandidateContentImpl) then) =
      __$$GeminiCandidateContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<GeminiCandidatePart> parts});
}

/// @nodoc
class __$$GeminiCandidateContentImplCopyWithImpl<$Res>
    extends _$GeminiCandidateContentCopyWithImpl<$Res,
        _$GeminiCandidateContentImpl>
    implements _$$GeminiCandidateContentImplCopyWith<$Res> {
  __$$GeminiCandidateContentImplCopyWithImpl(
      _$GeminiCandidateContentImpl _value,
      $Res Function(_$GeminiCandidateContentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parts = null,
  }) {
    return _then(_$GeminiCandidateContentImpl(
      parts: null == parts
          ? _value._parts
          : parts // ignore: cast_nullable_to_non_nullable
              as List<GeminiCandidatePart>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GeminiCandidateContentImpl implements _GeminiCandidateContent {
  const _$GeminiCandidateContentImpl(
      {required final List<GeminiCandidatePart> parts})
      : _parts = parts;

  factory _$GeminiCandidateContentImpl.fromJson(Map<String, dynamic> json) =>
      _$$GeminiCandidateContentImplFromJson(json);

  final List<GeminiCandidatePart> _parts;
  @override
  List<GeminiCandidatePart> get parts {
    if (_parts is EqualUnmodifiableListView) return _parts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_parts);
  }

  @override
  String toString() {
    return 'GeminiCandidateContent(parts: $parts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeminiCandidateContentImpl &&
            const DeepCollectionEquality().equals(other._parts, _parts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_parts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GeminiCandidateContentImplCopyWith<_$GeminiCandidateContentImpl>
      get copyWith => __$$GeminiCandidateContentImplCopyWithImpl<
          _$GeminiCandidateContentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GeminiCandidateContentImplToJson(
      this,
    );
  }
}

abstract class _GeminiCandidateContent implements GeminiCandidateContent {
  const factory _GeminiCandidateContent(
          {required final List<GeminiCandidatePart> parts}) =
      _$GeminiCandidateContentImpl;

  factory _GeminiCandidateContent.fromJson(Map<String, dynamic> json) =
      _$GeminiCandidateContentImpl.fromJson;

  @override
  List<GeminiCandidatePart> get parts;
  @override
  @JsonKey(ignore: true)
  _$$GeminiCandidateContentImplCopyWith<_$GeminiCandidateContentImpl>
      get copyWith => throw _privateConstructorUsedError;
}

GeminiCandidatePart _$GeminiCandidatePartFromJson(Map<String, dynamic> json) {
  return _GeminiCandidatePart.fromJson(json);
}

/// @nodoc
mixin _$GeminiCandidatePart {
  String get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeminiCandidatePartCopyWith<GeminiCandidatePart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeminiCandidatePartCopyWith<$Res> {
  factory $GeminiCandidatePartCopyWith(
          GeminiCandidatePart value, $Res Function(GeminiCandidatePart) then) =
      _$GeminiCandidatePartCopyWithImpl<$Res, GeminiCandidatePart>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class _$GeminiCandidatePartCopyWithImpl<$Res, $Val extends GeminiCandidatePart>
    implements $GeminiCandidatePartCopyWith<$Res> {
  _$GeminiCandidatePartCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GeminiCandidatePartImplCopyWith<$Res>
    implements $GeminiCandidatePartCopyWith<$Res> {
  factory _$$GeminiCandidatePartImplCopyWith(_$GeminiCandidatePartImpl value,
          $Res Function(_$GeminiCandidatePartImpl) then) =
      __$$GeminiCandidatePartImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$GeminiCandidatePartImplCopyWithImpl<$Res>
    extends _$GeminiCandidatePartCopyWithImpl<$Res, _$GeminiCandidatePartImpl>
    implements _$$GeminiCandidatePartImplCopyWith<$Res> {
  __$$GeminiCandidatePartImplCopyWithImpl(_$GeminiCandidatePartImpl _value,
      $Res Function(_$GeminiCandidatePartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$GeminiCandidatePartImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GeminiCandidatePartImpl implements _GeminiCandidatePart {
  const _$GeminiCandidatePartImpl({required this.text});

  factory _$GeminiCandidatePartImpl.fromJson(Map<String, dynamic> json) =>
      _$$GeminiCandidatePartImplFromJson(json);

  @override
  final String text;

  @override
  String toString() {
    return 'GeminiCandidatePart(text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeminiCandidatePartImpl &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GeminiCandidatePartImplCopyWith<_$GeminiCandidatePartImpl> get copyWith =>
      __$$GeminiCandidatePartImplCopyWithImpl<_$GeminiCandidatePartImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GeminiCandidatePartImplToJson(
      this,
    );
  }
}

abstract class _GeminiCandidatePart implements GeminiCandidatePart {
  const factory _GeminiCandidatePart({required final String text}) =
      _$GeminiCandidatePartImpl;

  factory _GeminiCandidatePart.fromJson(Map<String, dynamic> json) =
      _$GeminiCandidatePartImpl.fromJson;

  @override
  String get text;
  @override
  @JsonKey(ignore: true)
  _$$GeminiCandidatePartImplCopyWith<_$GeminiCandidatePartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
