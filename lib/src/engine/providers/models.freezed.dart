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
mixin _$ProviderModel {
  String get name => throw _privateConstructorUsedError;
  Set<String> get arguments => throw _privateConstructorUsedError;
  Set<ProviderDependencyModel> get dependencies =>
      throw _privateConstructorUsedError;

  /// Create a copy of ProviderModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProviderModelCopyWith<ProviderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProviderModelCopyWith<$Res> {
  factory $ProviderModelCopyWith(
          ProviderModel value, $Res Function(ProviderModel) then) =
      _$ProviderModelCopyWithImpl<$Res, ProviderModel>;
  @useResult
  $Res call(
      {String name,
      Set<String> arguments,
      Set<ProviderDependencyModel> dependencies});
}

/// @nodoc
class _$ProviderModelCopyWithImpl<$Res, $Val extends ProviderModel>
    implements $ProviderModelCopyWith<$Res> {
  _$ProviderModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProviderModel
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
              as Set<ProviderDependencyModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProviderModelImplCopyWith<$Res>
    implements $ProviderModelCopyWith<$Res> {
  factory _$$ProviderModelImplCopyWith(
          _$ProviderModelImpl value, $Res Function(_$ProviderModelImpl) then) =
      __$$ProviderModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      Set<String> arguments,
      Set<ProviderDependencyModel> dependencies});
}

/// @nodoc
class __$$ProviderModelImplCopyWithImpl<$Res>
    extends _$ProviderModelCopyWithImpl<$Res, _$ProviderModelImpl>
    implements _$$ProviderModelImplCopyWith<$Res> {
  __$$ProviderModelImplCopyWithImpl(
      _$ProviderModelImpl _value, $Res Function(_$ProviderModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProviderModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? arguments = null,
    Object? dependencies = null,
  }) {
    return _then(_$ProviderModelImpl(
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
              as Set<ProviderDependencyModel>,
    ));
  }
}

/// @nodoc

class _$ProviderModelImpl implements _ProviderModel {
  const _$ProviderModelImpl(
      {required this.name,
      final Set<String> arguments = const {},
      final Set<ProviderDependencyModel> dependencies = const {}})
      : _arguments = arguments,
        _dependencies = dependencies;

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

  final Set<ProviderDependencyModel> _dependencies;
  @override
  @JsonKey()
  Set<ProviderDependencyModel> get dependencies {
    if (_dependencies is EqualUnmodifiableSetView) return _dependencies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_dependencies);
  }

  @override
  String toString() {
    return 'ProviderModel(name: $name, arguments: $arguments, dependencies: $dependencies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProviderModelImpl &&
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

  /// Create a copy of ProviderModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProviderModelImplCopyWith<_$ProviderModelImpl> get copyWith =>
      __$$ProviderModelImplCopyWithImpl<_$ProviderModelImpl>(this, _$identity);
}

abstract class _ProviderModel implements ProviderModel {
  const factory _ProviderModel(
      {required final String name,
      final Set<String> arguments,
      final Set<ProviderDependencyModel> dependencies}) = _$ProviderModelImpl;

  @override
  String get name;
  @override
  Set<String> get arguments;
  @override
  Set<ProviderDependencyModel> get dependencies;

  /// Create a copy of ProviderModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProviderModelImplCopyWith<_$ProviderModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProviderDependencyModel {
  String get name => throw _privateConstructorUsedError;
  Set<String> get arguments => throw _privateConstructorUsedError;

  /// Create a copy of ProviderDependencyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProviderDependencyModelCopyWith<ProviderDependencyModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProviderDependencyModelCopyWith<$Res> {
  factory $ProviderDependencyModelCopyWith(ProviderDependencyModel value,
          $Res Function(ProviderDependencyModel) then) =
      _$ProviderDependencyModelCopyWithImpl<$Res, ProviderDependencyModel>;
  @useResult
  $Res call({String name, Set<String> arguments});
}

/// @nodoc
class _$ProviderDependencyModelCopyWithImpl<$Res,
        $Val extends ProviderDependencyModel>
    implements $ProviderDependencyModelCopyWith<$Res> {
  _$ProviderDependencyModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProviderDependencyModel
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
abstract class _$$ProviderDependencyModelImplCopyWith<$Res>
    implements $ProviderDependencyModelCopyWith<$Res> {
  factory _$$ProviderDependencyModelImplCopyWith(
          _$ProviderDependencyModelImpl value,
          $Res Function(_$ProviderDependencyModelImpl) then) =
      __$$ProviderDependencyModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, Set<String> arguments});
}

/// @nodoc
class __$$ProviderDependencyModelImplCopyWithImpl<$Res>
    extends _$ProviderDependencyModelCopyWithImpl<$Res,
        _$ProviderDependencyModelImpl>
    implements _$$ProviderDependencyModelImplCopyWith<$Res> {
  __$$ProviderDependencyModelImplCopyWithImpl(
      _$ProviderDependencyModelImpl _value,
      $Res Function(_$ProviderDependencyModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProviderDependencyModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? arguments = null,
  }) {
    return _then(_$ProviderDependencyModelImpl(
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

class _$ProviderDependencyModelImpl implements _ProviderDependencyModel {
  const _$ProviderDependencyModelImpl(
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
    return 'ProviderDependencyModel(name: $name, arguments: $arguments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProviderDependencyModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._arguments, _arguments));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(_arguments));

  /// Create a copy of ProviderDependencyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProviderDependencyModelImplCopyWith<_$ProviderDependencyModelImpl>
      get copyWith => __$$ProviderDependencyModelImplCopyWithImpl<
          _$ProviderDependencyModelImpl>(this, _$identity);
}

abstract class _ProviderDependencyModel implements ProviderDependencyModel {
  const factory _ProviderDependencyModel(
      {required final String name,
      final Set<String> arguments}) = _$ProviderDependencyModelImpl;

  @override
  String get name;
  @override
  Set<String> get arguments;

  /// Create a copy of ProviderDependencyModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProviderDependencyModelImplCopyWith<_$ProviderDependencyModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
