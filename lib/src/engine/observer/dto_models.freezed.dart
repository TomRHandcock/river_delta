// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dto_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProviderListDto _$ProviderListDtoFromJson(Map<String, dynamic> json) {
  return _ProviderListDto.fromJson(json);
}

/// @nodoc
mixin _$ProviderListDto {
  List<ProviderDto> get providers => throw _privateConstructorUsedError;

  /// Serializes this ProviderListDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProviderListDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProviderListDtoCopyWith<ProviderListDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProviderListDtoCopyWith<$Res> {
  factory $ProviderListDtoCopyWith(
          ProviderListDto value, $Res Function(ProviderListDto) then) =
      _$ProviderListDtoCopyWithImpl<$Res, ProviderListDto>;
  @useResult
  $Res call({List<ProviderDto> providers});
}

/// @nodoc
class _$ProviderListDtoCopyWithImpl<$Res, $Val extends ProviderListDto>
    implements $ProviderListDtoCopyWith<$Res> {
  _$ProviderListDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProviderListDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? providers = null,
  }) {
    return _then(_value.copyWith(
      providers: null == providers
          ? _value.providers
          : providers // ignore: cast_nullable_to_non_nullable
              as List<ProviderDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProviderListDtoImplCopyWith<$Res>
    implements $ProviderListDtoCopyWith<$Res> {
  factory _$$ProviderListDtoImplCopyWith(_$ProviderListDtoImpl value,
          $Res Function(_$ProviderListDtoImpl) then) =
      __$$ProviderListDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ProviderDto> providers});
}

/// @nodoc
class __$$ProviderListDtoImplCopyWithImpl<$Res>
    extends _$ProviderListDtoCopyWithImpl<$Res, _$ProviderListDtoImpl>
    implements _$$ProviderListDtoImplCopyWith<$Res> {
  __$$ProviderListDtoImplCopyWithImpl(
      _$ProviderListDtoImpl _value, $Res Function(_$ProviderListDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProviderListDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? providers = null,
  }) {
    return _then(_$ProviderListDtoImpl(
      providers: null == providers
          ? _value._providers
          : providers // ignore: cast_nullable_to_non_nullable
              as List<ProviderDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProviderListDtoImpl implements _ProviderListDto {
  const _$ProviderListDtoImpl({required final List<ProviderDto> providers})
      : _providers = providers;

  factory _$ProviderListDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProviderListDtoImplFromJson(json);

  final List<ProviderDto> _providers;
  @override
  List<ProviderDto> get providers {
    if (_providers is EqualUnmodifiableListView) return _providers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_providers);
  }

  @override
  String toString() {
    return 'ProviderListDto(providers: $providers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProviderListDtoImpl &&
            const DeepCollectionEquality()
                .equals(other._providers, _providers));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_providers));

  /// Create a copy of ProviderListDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProviderListDtoImplCopyWith<_$ProviderListDtoImpl> get copyWith =>
      __$$ProviderListDtoImplCopyWithImpl<_$ProviderListDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProviderListDtoImplToJson(
      this,
    );
  }
}

abstract class _ProviderListDto implements ProviderListDto {
  const factory _ProviderListDto({required final List<ProviderDto> providers}) =
      _$ProviderListDtoImpl;

  factory _ProviderListDto.fromJson(Map<String, dynamic> json) =
      _$ProviderListDtoImpl.fromJson;

  @override
  List<ProviderDto> get providers;

  /// Create a copy of ProviderListDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProviderListDtoImplCopyWith<_$ProviderListDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProviderDto _$ProviderDtoFromJson(Map<String, dynamic> json) {
  return _ProviderDto.fromJson(json);
}

/// @nodoc
mixin _$ProviderDto {
  String get name => throw _privateConstructorUsedError;
  dynamic get argument => throw _privateConstructorUsedError;
  List<ProviderDependencyDto> get dependencies =>
      throw _privateConstructorUsedError;

  /// Serializes this ProviderDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProviderDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProviderDtoCopyWith<ProviderDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProviderDtoCopyWith<$Res> {
  factory $ProviderDtoCopyWith(
          ProviderDto value, $Res Function(ProviderDto) then) =
      _$ProviderDtoCopyWithImpl<$Res, ProviderDto>;
  @useResult
  $Res call(
      {String name,
      dynamic argument,
      List<ProviderDependencyDto> dependencies});
}

/// @nodoc
class _$ProviderDtoCopyWithImpl<$Res, $Val extends ProviderDto>
    implements $ProviderDtoCopyWith<$Res> {
  _$ProviderDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProviderDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? argument = freezed,
    Object? dependencies = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      argument: freezed == argument
          ? _value.argument
          : argument // ignore: cast_nullable_to_non_nullable
              as dynamic,
      dependencies: null == dependencies
          ? _value.dependencies
          : dependencies // ignore: cast_nullable_to_non_nullable
              as List<ProviderDependencyDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProviderDtoImplCopyWith<$Res>
    implements $ProviderDtoCopyWith<$Res> {
  factory _$$ProviderDtoImplCopyWith(
          _$ProviderDtoImpl value, $Res Function(_$ProviderDtoImpl) then) =
      __$$ProviderDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      dynamic argument,
      List<ProviderDependencyDto> dependencies});
}

/// @nodoc
class __$$ProviderDtoImplCopyWithImpl<$Res>
    extends _$ProviderDtoCopyWithImpl<$Res, _$ProviderDtoImpl>
    implements _$$ProviderDtoImplCopyWith<$Res> {
  __$$ProviderDtoImplCopyWithImpl(
      _$ProviderDtoImpl _value, $Res Function(_$ProviderDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProviderDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? argument = freezed,
    Object? dependencies = null,
  }) {
    return _then(_$ProviderDtoImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      argument: freezed == argument
          ? _value.argument
          : argument // ignore: cast_nullable_to_non_nullable
              as dynamic,
      dependencies: null == dependencies
          ? _value._dependencies
          : dependencies // ignore: cast_nullable_to_non_nullable
              as List<ProviderDependencyDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProviderDtoImpl implements _ProviderDto {
  const _$ProviderDtoImpl(
      {required this.name,
      this.argument,
      final List<ProviderDependencyDto> dependencies = const []})
      : _dependencies = dependencies;

  factory _$ProviderDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProviderDtoImplFromJson(json);

  @override
  final String name;
  @override
  final dynamic argument;
  final List<ProviderDependencyDto> _dependencies;
  @override
  @JsonKey()
  List<ProviderDependencyDto> get dependencies {
    if (_dependencies is EqualUnmodifiableListView) return _dependencies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dependencies);
  }

  @override
  String toString() {
    return 'ProviderDto(name: $name, argument: $argument, dependencies: $dependencies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProviderDtoImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.argument, argument) &&
            const DeepCollectionEquality()
                .equals(other._dependencies, _dependencies));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      const DeepCollectionEquality().hash(argument),
      const DeepCollectionEquality().hash(_dependencies));

  /// Create a copy of ProviderDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProviderDtoImplCopyWith<_$ProviderDtoImpl> get copyWith =>
      __$$ProviderDtoImplCopyWithImpl<_$ProviderDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProviderDtoImplToJson(
      this,
    );
  }
}

abstract class _ProviderDto implements ProviderDto {
  const factory _ProviderDto(
      {required final String name,
      final dynamic argument,
      final List<ProviderDependencyDto> dependencies}) = _$ProviderDtoImpl;

  factory _ProviderDto.fromJson(Map<String, dynamic> json) =
      _$ProviderDtoImpl.fromJson;

  @override
  String get name;
  @override
  dynamic get argument;
  @override
  List<ProviderDependencyDto> get dependencies;

  /// Create a copy of ProviderDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProviderDtoImplCopyWith<_$ProviderDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProviderDependencyDto _$ProviderDependencyDtoFromJson(
    Map<String, dynamic> json) {
  return _ProviderDependencyDto.fromJson(json);
}

/// @nodoc
mixin _$ProviderDependencyDto {
  String get name => throw _privateConstructorUsedError;
  dynamic get argument => throw _privateConstructorUsedError;

  /// Serializes this ProviderDependencyDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProviderDependencyDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProviderDependencyDtoCopyWith<ProviderDependencyDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProviderDependencyDtoCopyWith<$Res> {
  factory $ProviderDependencyDtoCopyWith(ProviderDependencyDto value,
          $Res Function(ProviderDependencyDto) then) =
      _$ProviderDependencyDtoCopyWithImpl<$Res, ProviderDependencyDto>;
  @useResult
  $Res call({String name, dynamic argument});
}

/// @nodoc
class _$ProviderDependencyDtoCopyWithImpl<$Res,
        $Val extends ProviderDependencyDto>
    implements $ProviderDependencyDtoCopyWith<$Res> {
  _$ProviderDependencyDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProviderDependencyDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? argument = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      argument: freezed == argument
          ? _value.argument
          : argument // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProviderDependencyDtoImplCopyWith<$Res>
    implements $ProviderDependencyDtoCopyWith<$Res> {
  factory _$$ProviderDependencyDtoImplCopyWith(
          _$ProviderDependencyDtoImpl value,
          $Res Function(_$ProviderDependencyDtoImpl) then) =
      __$$ProviderDependencyDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, dynamic argument});
}

/// @nodoc
class __$$ProviderDependencyDtoImplCopyWithImpl<$Res>
    extends _$ProviderDependencyDtoCopyWithImpl<$Res,
        _$ProviderDependencyDtoImpl>
    implements _$$ProviderDependencyDtoImplCopyWith<$Res> {
  __$$ProviderDependencyDtoImplCopyWithImpl(_$ProviderDependencyDtoImpl _value,
      $Res Function(_$ProviderDependencyDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProviderDependencyDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? argument = freezed,
  }) {
    return _then(_$ProviderDependencyDtoImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      argument: freezed == argument
          ? _value.argument
          : argument // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProviderDependencyDtoImpl implements _ProviderDependencyDto {
  const _$ProviderDependencyDtoImpl({required this.name, this.argument});

  factory _$ProviderDependencyDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProviderDependencyDtoImplFromJson(json);

  @override
  final String name;
  @override
  final dynamic argument;

  @override
  String toString() {
    return 'ProviderDependencyDto(name: $name, argument: $argument)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProviderDependencyDtoImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.argument, argument));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(argument));

  /// Create a copy of ProviderDependencyDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProviderDependencyDtoImplCopyWith<_$ProviderDependencyDtoImpl>
      get copyWith => __$$ProviderDependencyDtoImplCopyWithImpl<
          _$ProviderDependencyDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProviderDependencyDtoImplToJson(
      this,
    );
  }
}

abstract class _ProviderDependencyDto implements ProviderDependencyDto {
  const factory _ProviderDependencyDto(
      {required final String name,
      final dynamic argument}) = _$ProviderDependencyDtoImpl;

  factory _ProviderDependencyDto.fromJson(Map<String, dynamic> json) =
      _$ProviderDependencyDtoImpl.fromJson;

  @override
  String get name;
  @override
  dynamic get argument;

  /// Create a copy of ProviderDependencyDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProviderDependencyDtoImplCopyWith<_$ProviderDependencyDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
