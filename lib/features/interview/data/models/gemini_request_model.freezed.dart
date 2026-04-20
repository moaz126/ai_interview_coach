// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gemini_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GeminiRequestModel _$GeminiRequestModelFromJson(Map<String, dynamic> json) {
  return _GeminiRequestModel.fromJson(json);
}

/// @nodoc
mixin _$GeminiRequestModel {
  @JsonKey(name: 'system_instruction')
  GeminiSystemInstruction get systemInstruction =>
      throw _privateConstructorUsedError;
  List<GeminiContent> get contents => throw _privateConstructorUsedError;
  @JsonKey(name: 'generationConfig')
  GeminiGenerationConfig get generationConfig =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeminiRequestModelCopyWith<GeminiRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeminiRequestModelCopyWith<$Res> {
  factory $GeminiRequestModelCopyWith(
          GeminiRequestModel value, $Res Function(GeminiRequestModel) then) =
      _$GeminiRequestModelCopyWithImpl<$Res, GeminiRequestModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'system_instruction')
      GeminiSystemInstruction systemInstruction,
      List<GeminiContent> contents,
      @JsonKey(name: 'generationConfig')
      GeminiGenerationConfig generationConfig});

  $GeminiSystemInstructionCopyWith<$Res> get systemInstruction;
  $GeminiGenerationConfigCopyWith<$Res> get generationConfig;
}

/// @nodoc
class _$GeminiRequestModelCopyWithImpl<$Res, $Val extends GeminiRequestModel>
    implements $GeminiRequestModelCopyWith<$Res> {
  _$GeminiRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? systemInstruction = null,
    Object? contents = null,
    Object? generationConfig = null,
  }) {
    return _then(_value.copyWith(
      systemInstruction: null == systemInstruction
          ? _value.systemInstruction
          : systemInstruction // ignore: cast_nullable_to_non_nullable
              as GeminiSystemInstruction,
      contents: null == contents
          ? _value.contents
          : contents // ignore: cast_nullable_to_non_nullable
              as List<GeminiContent>,
      generationConfig: null == generationConfig
          ? _value.generationConfig
          : generationConfig // ignore: cast_nullable_to_non_nullable
              as GeminiGenerationConfig,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GeminiSystemInstructionCopyWith<$Res> get systemInstruction {
    return $GeminiSystemInstructionCopyWith<$Res>(_value.systemInstruction,
        (value) {
      return _then(_value.copyWith(systemInstruction: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GeminiGenerationConfigCopyWith<$Res> get generationConfig {
    return $GeminiGenerationConfigCopyWith<$Res>(_value.generationConfig,
        (value) {
      return _then(_value.copyWith(generationConfig: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GeminiRequestModelImplCopyWith<$Res>
    implements $GeminiRequestModelCopyWith<$Res> {
  factory _$$GeminiRequestModelImplCopyWith(_$GeminiRequestModelImpl value,
          $Res Function(_$GeminiRequestModelImpl) then) =
      __$$GeminiRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'system_instruction')
      GeminiSystemInstruction systemInstruction,
      List<GeminiContent> contents,
      @JsonKey(name: 'generationConfig')
      GeminiGenerationConfig generationConfig});

  @override
  $GeminiSystemInstructionCopyWith<$Res> get systemInstruction;
  @override
  $GeminiGenerationConfigCopyWith<$Res> get generationConfig;
}

/// @nodoc
class __$$GeminiRequestModelImplCopyWithImpl<$Res>
    extends _$GeminiRequestModelCopyWithImpl<$Res, _$GeminiRequestModelImpl>
    implements _$$GeminiRequestModelImplCopyWith<$Res> {
  __$$GeminiRequestModelImplCopyWithImpl(_$GeminiRequestModelImpl _value,
      $Res Function(_$GeminiRequestModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? systemInstruction = null,
    Object? contents = null,
    Object? generationConfig = null,
  }) {
    return _then(_$GeminiRequestModelImpl(
      systemInstruction: null == systemInstruction
          ? _value.systemInstruction
          : systemInstruction // ignore: cast_nullable_to_non_nullable
              as GeminiSystemInstruction,
      contents: null == contents
          ? _value._contents
          : contents // ignore: cast_nullable_to_non_nullable
              as List<GeminiContent>,
      generationConfig: null == generationConfig
          ? _value.generationConfig
          : generationConfig // ignore: cast_nullable_to_non_nullable
              as GeminiGenerationConfig,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GeminiRequestModelImpl implements _GeminiRequestModel {
  const _$GeminiRequestModelImpl(
      {@JsonKey(name: 'system_instruction') required this.systemInstruction,
      required final List<GeminiContent> contents,
      @JsonKey(name: 'generationConfig') required this.generationConfig})
      : _contents = contents;

  factory _$GeminiRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GeminiRequestModelImplFromJson(json);

  @override
  @JsonKey(name: 'system_instruction')
  final GeminiSystemInstruction systemInstruction;
  final List<GeminiContent> _contents;
  @override
  List<GeminiContent> get contents {
    if (_contents is EqualUnmodifiableListView) return _contents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_contents);
  }

  @override
  @JsonKey(name: 'generationConfig')
  final GeminiGenerationConfig generationConfig;

  @override
  String toString() {
    return 'GeminiRequestModel(systemInstruction: $systemInstruction, contents: $contents, generationConfig: $generationConfig)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeminiRequestModelImpl &&
            (identical(other.systemInstruction, systemInstruction) ||
                other.systemInstruction == systemInstruction) &&
            const DeepCollectionEquality().equals(other._contents, _contents) &&
            (identical(other.generationConfig, generationConfig) ||
                other.generationConfig == generationConfig));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, systemInstruction,
      const DeepCollectionEquality().hash(_contents), generationConfig);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GeminiRequestModelImplCopyWith<_$GeminiRequestModelImpl> get copyWith =>
      __$$GeminiRequestModelImplCopyWithImpl<_$GeminiRequestModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GeminiRequestModelImplToJson(
      this,
    );
  }
}

abstract class _GeminiRequestModel implements GeminiRequestModel {
  const factory _GeminiRequestModel(
          {@JsonKey(name: 'system_instruction')
          required final GeminiSystemInstruction systemInstruction,
          required final List<GeminiContent> contents,
          @JsonKey(name: 'generationConfig')
          required final GeminiGenerationConfig generationConfig}) =
      _$GeminiRequestModelImpl;

  factory _GeminiRequestModel.fromJson(Map<String, dynamic> json) =
      _$GeminiRequestModelImpl.fromJson;

  @override
  @JsonKey(name: 'system_instruction')
  GeminiSystemInstruction get systemInstruction;
  @override
  List<GeminiContent> get contents;
  @override
  @JsonKey(name: 'generationConfig')
  GeminiGenerationConfig get generationConfig;
  @override
  @JsonKey(ignore: true)
  _$$GeminiRequestModelImplCopyWith<_$GeminiRequestModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GeminiSystemInstruction _$GeminiSystemInstructionFromJson(
    Map<String, dynamic> json) {
  return _GeminiSystemInstruction.fromJson(json);
}

/// @nodoc
mixin _$GeminiSystemInstruction {
  List<GeminiPart> get parts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeminiSystemInstructionCopyWith<GeminiSystemInstruction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeminiSystemInstructionCopyWith<$Res> {
  factory $GeminiSystemInstructionCopyWith(GeminiSystemInstruction value,
          $Res Function(GeminiSystemInstruction) then) =
      _$GeminiSystemInstructionCopyWithImpl<$Res, GeminiSystemInstruction>;
  @useResult
  $Res call({List<GeminiPart> parts});
}

/// @nodoc
class _$GeminiSystemInstructionCopyWithImpl<$Res,
        $Val extends GeminiSystemInstruction>
    implements $GeminiSystemInstructionCopyWith<$Res> {
  _$GeminiSystemInstructionCopyWithImpl(this._value, this._then);

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
              as List<GeminiPart>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GeminiSystemInstructionImplCopyWith<$Res>
    implements $GeminiSystemInstructionCopyWith<$Res> {
  factory _$$GeminiSystemInstructionImplCopyWith(
          _$GeminiSystemInstructionImpl value,
          $Res Function(_$GeminiSystemInstructionImpl) then) =
      __$$GeminiSystemInstructionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<GeminiPart> parts});
}

/// @nodoc
class __$$GeminiSystemInstructionImplCopyWithImpl<$Res>
    extends _$GeminiSystemInstructionCopyWithImpl<$Res,
        _$GeminiSystemInstructionImpl>
    implements _$$GeminiSystemInstructionImplCopyWith<$Res> {
  __$$GeminiSystemInstructionImplCopyWithImpl(
      _$GeminiSystemInstructionImpl _value,
      $Res Function(_$GeminiSystemInstructionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parts = null,
  }) {
    return _then(_$GeminiSystemInstructionImpl(
      parts: null == parts
          ? _value._parts
          : parts // ignore: cast_nullable_to_non_nullable
              as List<GeminiPart>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GeminiSystemInstructionImpl implements _GeminiSystemInstruction {
  const _$GeminiSystemInstructionImpl({required final List<GeminiPart> parts})
      : _parts = parts;

  factory _$GeminiSystemInstructionImpl.fromJson(Map<String, dynamic> json) =>
      _$$GeminiSystemInstructionImplFromJson(json);

  final List<GeminiPart> _parts;
  @override
  List<GeminiPart> get parts {
    if (_parts is EqualUnmodifiableListView) return _parts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_parts);
  }

  @override
  String toString() {
    return 'GeminiSystemInstruction(parts: $parts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeminiSystemInstructionImpl &&
            const DeepCollectionEquality().equals(other._parts, _parts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_parts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GeminiSystemInstructionImplCopyWith<_$GeminiSystemInstructionImpl>
      get copyWith => __$$GeminiSystemInstructionImplCopyWithImpl<
          _$GeminiSystemInstructionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GeminiSystemInstructionImplToJson(
      this,
    );
  }
}

abstract class _GeminiSystemInstruction implements GeminiSystemInstruction {
  const factory _GeminiSystemInstruction(
      {required final List<GeminiPart> parts}) = _$GeminiSystemInstructionImpl;

  factory _GeminiSystemInstruction.fromJson(Map<String, dynamic> json) =
      _$GeminiSystemInstructionImpl.fromJson;

  @override
  List<GeminiPart> get parts;
  @override
  @JsonKey(ignore: true)
  _$$GeminiSystemInstructionImplCopyWith<_$GeminiSystemInstructionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

GeminiContent _$GeminiContentFromJson(Map<String, dynamic> json) {
  return _GeminiContent.fromJson(json);
}

/// @nodoc
mixin _$GeminiContent {
  String get role => throw _privateConstructorUsedError;
  List<GeminiPart> get parts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeminiContentCopyWith<GeminiContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeminiContentCopyWith<$Res> {
  factory $GeminiContentCopyWith(
          GeminiContent value, $Res Function(GeminiContent) then) =
      _$GeminiContentCopyWithImpl<$Res, GeminiContent>;
  @useResult
  $Res call({String role, List<GeminiPart> parts});
}

/// @nodoc
class _$GeminiContentCopyWithImpl<$Res, $Val extends GeminiContent>
    implements $GeminiContentCopyWith<$Res> {
  _$GeminiContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = null,
    Object? parts = null,
  }) {
    return _then(_value.copyWith(
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      parts: null == parts
          ? _value.parts
          : parts // ignore: cast_nullable_to_non_nullable
              as List<GeminiPart>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GeminiContentImplCopyWith<$Res>
    implements $GeminiContentCopyWith<$Res> {
  factory _$$GeminiContentImplCopyWith(
          _$GeminiContentImpl value, $Res Function(_$GeminiContentImpl) then) =
      __$$GeminiContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String role, List<GeminiPart> parts});
}

/// @nodoc
class __$$GeminiContentImplCopyWithImpl<$Res>
    extends _$GeminiContentCopyWithImpl<$Res, _$GeminiContentImpl>
    implements _$$GeminiContentImplCopyWith<$Res> {
  __$$GeminiContentImplCopyWithImpl(
      _$GeminiContentImpl _value, $Res Function(_$GeminiContentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? role = null,
    Object? parts = null,
  }) {
    return _then(_$GeminiContentImpl(
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      parts: null == parts
          ? _value._parts
          : parts // ignore: cast_nullable_to_non_nullable
              as List<GeminiPart>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GeminiContentImpl implements _GeminiContent {
  const _$GeminiContentImpl(
      {required this.role, required final List<GeminiPart> parts})
      : _parts = parts;

  factory _$GeminiContentImpl.fromJson(Map<String, dynamic> json) =>
      _$$GeminiContentImplFromJson(json);

  @override
  final String role;
  final List<GeminiPart> _parts;
  @override
  List<GeminiPart> get parts {
    if (_parts is EqualUnmodifiableListView) return _parts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_parts);
  }

  @override
  String toString() {
    return 'GeminiContent(role: $role, parts: $parts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeminiContentImpl &&
            (identical(other.role, role) || other.role == role) &&
            const DeepCollectionEquality().equals(other._parts, _parts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, role, const DeepCollectionEquality().hash(_parts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GeminiContentImplCopyWith<_$GeminiContentImpl> get copyWith =>
      __$$GeminiContentImplCopyWithImpl<_$GeminiContentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GeminiContentImplToJson(
      this,
    );
  }
}

abstract class _GeminiContent implements GeminiContent {
  const factory _GeminiContent(
      {required final String role,
      required final List<GeminiPart> parts}) = _$GeminiContentImpl;

  factory _GeminiContent.fromJson(Map<String, dynamic> json) =
      _$GeminiContentImpl.fromJson;

  @override
  String get role;
  @override
  List<GeminiPart> get parts;
  @override
  @JsonKey(ignore: true)
  _$$GeminiContentImplCopyWith<_$GeminiContentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GeminiPart _$GeminiPartFromJson(Map<String, dynamic> json) {
  return _GeminiPart.fromJson(json);
}

/// @nodoc
mixin _$GeminiPart {
  String get text => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeminiPartCopyWith<GeminiPart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeminiPartCopyWith<$Res> {
  factory $GeminiPartCopyWith(
          GeminiPart value, $Res Function(GeminiPart) then) =
      _$GeminiPartCopyWithImpl<$Res, GeminiPart>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class _$GeminiPartCopyWithImpl<$Res, $Val extends GeminiPart>
    implements $GeminiPartCopyWith<$Res> {
  _$GeminiPartCopyWithImpl(this._value, this._then);

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
abstract class _$$GeminiPartImplCopyWith<$Res>
    implements $GeminiPartCopyWith<$Res> {
  factory _$$GeminiPartImplCopyWith(
          _$GeminiPartImpl value, $Res Function(_$GeminiPartImpl) then) =
      __$$GeminiPartImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$GeminiPartImplCopyWithImpl<$Res>
    extends _$GeminiPartCopyWithImpl<$Res, _$GeminiPartImpl>
    implements _$$GeminiPartImplCopyWith<$Res> {
  __$$GeminiPartImplCopyWithImpl(
      _$GeminiPartImpl _value, $Res Function(_$GeminiPartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$GeminiPartImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GeminiPartImpl implements _GeminiPart {
  const _$GeminiPartImpl({required this.text});

  factory _$GeminiPartImpl.fromJson(Map<String, dynamic> json) =>
      _$$GeminiPartImplFromJson(json);

  @override
  final String text;

  @override
  String toString() {
    return 'GeminiPart(text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeminiPartImpl &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GeminiPartImplCopyWith<_$GeminiPartImpl> get copyWith =>
      __$$GeminiPartImplCopyWithImpl<_$GeminiPartImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GeminiPartImplToJson(
      this,
    );
  }
}

abstract class _GeminiPart implements GeminiPart {
  const factory _GeminiPart({required final String text}) = _$GeminiPartImpl;

  factory _GeminiPart.fromJson(Map<String, dynamic> json) =
      _$GeminiPartImpl.fromJson;

  @override
  String get text;
  @override
  @JsonKey(ignore: true)
  _$$GeminiPartImplCopyWith<_$GeminiPartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GeminiGenerationConfig _$GeminiGenerationConfigFromJson(
    Map<String, dynamic> json) {
  return _GeminiGenerationConfig.fromJson(json);
}

/// @nodoc
mixin _$GeminiGenerationConfig {
  @JsonKey(name: 'maxOutputTokens')
  int get maxOutputTokens => throw _privateConstructorUsedError;
  double get temperature => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GeminiGenerationConfigCopyWith<GeminiGenerationConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeminiGenerationConfigCopyWith<$Res> {
  factory $GeminiGenerationConfigCopyWith(GeminiGenerationConfig value,
          $Res Function(GeminiGenerationConfig) then) =
      _$GeminiGenerationConfigCopyWithImpl<$Res, GeminiGenerationConfig>;
  @useResult
  $Res call(
      {@JsonKey(name: 'maxOutputTokens') int maxOutputTokens,
      double temperature});
}

/// @nodoc
class _$GeminiGenerationConfigCopyWithImpl<$Res,
        $Val extends GeminiGenerationConfig>
    implements $GeminiGenerationConfigCopyWith<$Res> {
  _$GeminiGenerationConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxOutputTokens = null,
    Object? temperature = null,
  }) {
    return _then(_value.copyWith(
      maxOutputTokens: null == maxOutputTokens
          ? _value.maxOutputTokens
          : maxOutputTokens // ignore: cast_nullable_to_non_nullable
              as int,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GeminiGenerationConfigImplCopyWith<$Res>
    implements $GeminiGenerationConfigCopyWith<$Res> {
  factory _$$GeminiGenerationConfigImplCopyWith(
          _$GeminiGenerationConfigImpl value,
          $Res Function(_$GeminiGenerationConfigImpl) then) =
      __$$GeminiGenerationConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'maxOutputTokens') int maxOutputTokens,
      double temperature});
}

/// @nodoc
class __$$GeminiGenerationConfigImplCopyWithImpl<$Res>
    extends _$GeminiGenerationConfigCopyWithImpl<$Res,
        _$GeminiGenerationConfigImpl>
    implements _$$GeminiGenerationConfigImplCopyWith<$Res> {
  __$$GeminiGenerationConfigImplCopyWithImpl(
      _$GeminiGenerationConfigImpl _value,
      $Res Function(_$GeminiGenerationConfigImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maxOutputTokens = null,
    Object? temperature = null,
  }) {
    return _then(_$GeminiGenerationConfigImpl(
      maxOutputTokens: null == maxOutputTokens
          ? _value.maxOutputTokens
          : maxOutputTokens // ignore: cast_nullable_to_non_nullable
              as int,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GeminiGenerationConfigImpl implements _GeminiGenerationConfig {
  const _$GeminiGenerationConfigImpl(
      {@JsonKey(name: 'maxOutputTokens') required this.maxOutputTokens,
      required this.temperature});

  factory _$GeminiGenerationConfigImpl.fromJson(Map<String, dynamic> json) =>
      _$$GeminiGenerationConfigImplFromJson(json);

  @override
  @JsonKey(name: 'maxOutputTokens')
  final int maxOutputTokens;
  @override
  final double temperature;

  @override
  String toString() {
    return 'GeminiGenerationConfig(maxOutputTokens: $maxOutputTokens, temperature: $temperature)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeminiGenerationConfigImpl &&
            (identical(other.maxOutputTokens, maxOutputTokens) ||
                other.maxOutputTokens == maxOutputTokens) &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, maxOutputTokens, temperature);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GeminiGenerationConfigImplCopyWith<_$GeminiGenerationConfigImpl>
      get copyWith => __$$GeminiGenerationConfigImplCopyWithImpl<
          _$GeminiGenerationConfigImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GeminiGenerationConfigImplToJson(
      this,
    );
  }
}

abstract class _GeminiGenerationConfig implements GeminiGenerationConfig {
  const factory _GeminiGenerationConfig(
      {@JsonKey(name: 'maxOutputTokens') required final int maxOutputTokens,
      required final double temperature}) = _$GeminiGenerationConfigImpl;

  factory _GeminiGenerationConfig.fromJson(Map<String, dynamic> json) =
      _$GeminiGenerationConfigImpl.fromJson;

  @override
  @JsonKey(name: 'maxOutputTokens')
  int get maxOutputTokens;
  @override
  double get temperature;
  @override
  @JsonKey(ignore: true)
  _$$GeminiGenerationConfigImplCopyWith<_$GeminiGenerationConfigImpl>
      get copyWith => throw _privateConstructorUsedError;
}
