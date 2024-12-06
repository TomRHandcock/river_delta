// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DeltaProvider {
  String get name => throw _privateConstructorUsedError;
  Set<String> get arguments => throw _privateConstructorUsedError;
  List<DeltaProviderDependency> get dependencies =>
      throw _privateConstructorUsedError;

  /// Create a copy of DeltaProvider
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeltaProviderCopyWith<DeltaProvider> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeltaProviderCopyWith<$Res> {
  factory $DeltaProviderCopyWith(
          DeltaProvider value, $Res Function(DeltaProvider) then) =
      _$DeltaProviderCopyWithImpl<$Res, DeltaProvider>;
  @useResult
  $Res call(
      {String name,
      Set<String> arguments,
      List<DeltaProviderDependency> dependencies});
}

/// @nodoc
class _$DeltaProviderCopyWithImpl<$Res, $Val extends DeltaProvider>
    implements $DeltaProviderCopyWith<$Res> {
  _$DeltaProviderCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeltaProvider
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? arguments = null,
    Object? dependencies = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      arguments: null == arguments
          ? _value.arguments
          : arguments // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      dependencies: null == dependencies
          ? _value.dependencies
          : dependencies // ignore: cast_nullable_to_non_nullable
              as List<DeltaProviderDependency>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeltaProviderImplCopyWith<$Res>
    implements $DeltaProviderCopyWith<$Res> {
  factory _$$DeltaProviderImplCopyWith(
          _$DeltaProviderImpl value, $Res Function(_$DeltaProviderImpl) then) =
      __$$DeltaProviderImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      Set<String> arguments,
      List<DeltaProviderDependency> dependencies});
}

/// @nodoc
class __$$DeltaProviderImplCopyWithImpl<$Res>
    extends _$DeltaProviderCopyWithImpl<$Res, _$DeltaProviderImpl>
    implements _$$DeltaProviderImplCopyWith<$Res> {
  __$$DeltaProviderImplCopyWithImpl(
      _$DeltaProviderImpl _value, $Res Function(_$DeltaProviderImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeltaProvider
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? arguments = null,
    Object? dependencies = null,
  }) {
    return _then(_$DeltaProviderImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      arguments: null == arguments
          ? _value._arguments
          : arguments // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      dependencies: null == dependencies
          ? _value._dependencies
          : dependencies // ignore: cast_nullable_to_non_nullable
              as List<DeltaProviderDependency>,
    ));
  }
}

/// @nodoc

class _$DeltaProviderImpl extends _DeltaProvider {
  const _$DeltaProviderImpl(
      {required this.name,
      final Set<String> arguments = const {},
      final List<DeltaProviderDependency> dependencies = const []})
      : _arguments = arguments,
        _dependencies = dependencies,
        super._();

  @override
  final String name;
  final Set<String> _arguments;
  @override
  @JsonKey()
  Set<String> get arguments {
    if (_arguments is EqualUnmodifiableSetView) return _arguments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_arguments);
  }

  final List<DeltaProviderDependency> _dependencies;
  @override
  @JsonKey()
  List<DeltaProviderDependency> get dependencies {
    if (_dependencies is EqualUnmodifiableListView) return _dependencies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dependencies);
  }

  @override
  String toString() {
    return 'DeltaProvider(name: $name, arguments: $arguments, dependencies: $dependencies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeltaProviderImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._arguments, _arguments) &&
            const DeepCollectionEquality()
                .equals(other._dependencies, _dependencies));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      const DeepCollectionEquality().hash(_arguments),
      const DeepCollectionEquality().hash(_dependencies));

  /// Create a copy of DeltaProvider
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeltaProviderImplCopyWith<_$DeltaProviderImpl> get copyWith =>
      __$$DeltaProviderImplCopyWithImpl<_$DeltaProviderImpl>(this, _$identity);
}

abstract class _DeltaProvider extends DeltaProvider {
  const factory _DeltaProvider(
      {required final String name,
      final Set<String> arguments,
      final List<DeltaProviderDependency> dependencies}) = _$DeltaProviderImpl;
  const _DeltaProvider._() : super._();

  @override
  String get name;
  @override
  Set<String> get arguments;
  @override
  List<DeltaProviderDependency> get dependencies;

  /// Create a copy of DeltaProvider
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeltaProviderImplCopyWith<_$DeltaProviderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DeltaProviderDependency {
  String get name => throw _privateConstructorUsedError;
  Set<String> get arguments => throw _privateConstructorUsedError;

  /// Create a copy of DeltaProviderDependency
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeltaProviderDependencyCopyWith<DeltaProviderDependency> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeltaProviderDependencyCopyWith<$Res> {
  factory $DeltaProviderDependencyCopyWith(DeltaProviderDependency value,
          $Res Function(DeltaProviderDependency) then) =
      _$DeltaProviderDependencyCopyWithImpl<$Res, DeltaProviderDependency>;
  @useResult
  $Res call({String name, Set<String> arguments});
}

/// @nodoc
class _$DeltaProviderDependencyCopyWithImpl<$Res,
        $Val extends DeltaProviderDependency>
    implements $DeltaProviderDependencyCopyWith<$Res> {
  _$DeltaProviderDependencyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeltaProviderDependency
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? arguments = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      arguments: null == arguments
          ? _value.arguments
          : arguments // ignore: cast_nullable_to_non_nullable
              as Set<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeltaProviderDependencyImplCopyWith<$Res>
    implements $DeltaProviderDependencyCopyWith<$Res> {
  factory _$$DeltaProviderDependencyImplCopyWith(
          _$DeltaProviderDependencyImpl value,
          $Res Function(_$DeltaProviderDependencyImpl) then) =
      __$$DeltaProviderDependencyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, Set<String> arguments});
}

/// @nodoc
class __$$DeltaProviderDependencyImplCopyWithImpl<$Res>
    extends _$DeltaProviderDependencyCopyWithImpl<$Res,
        _$DeltaProviderDependencyImpl>
    implements _$$DeltaProviderDependencyImplCopyWith<$Res> {
  __$$DeltaProviderDependencyImplCopyWithImpl(
      _$DeltaProviderDependencyImpl _value,
      $Res Function(_$DeltaProviderDependencyImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeltaProviderDependency
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? arguments = null,
  }) {
    return _then(_$DeltaProviderDependencyImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      arguments: null == arguments
          ? _value._arguments
          : arguments // ignore: cast_nullable_to_non_nullable
              as Set<String>,
    ));
  }
}

/// @nodoc

class _$DeltaProviderDependencyImpl implements _DeltaProviderDependency {
  const _$DeltaProviderDependencyImpl(
      {required this.name, final Set<String> arguments = const {}})
      : _arguments = arguments;

  @override
  final String name;
  final Set<String> _arguments;
  @override
  @JsonKey()
  Set<String> get arguments {
    if (_arguments is EqualUnmodifiableSetView) return _arguments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_arguments);
  }

  @override
  String toString() {
    return 'DeltaProviderDependency(name: $name, arguments: $arguments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeltaProviderDependencyImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._arguments, _arguments));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(_arguments));

  /// Create a copy of DeltaProviderDependency
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeltaProviderDependencyImplCopyWith<_$DeltaProviderDependencyImpl>
      get copyWith => __$$DeltaProviderDependencyImplCopyWithImpl<
          _$DeltaProviderDependencyImpl>(this, _$identity);
}

abstract class _DeltaProviderDependency implements DeltaProviderDependency {
  const factory _DeltaProviderDependency(
      {required final String name,
      final Set<String> arguments}) = _$DeltaProviderDependencyImpl;

  @override
  String get name;
  @override
  Set<String> get arguments;

  /// Create a copy of DeltaProviderDependency
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeltaProviderDependencyImplCopyWith<_$DeltaProviderDependencyImpl>
      get copyWith => throw _privateConstructorUsedError;
}
