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
  List<String> get dependencies => throw _privateConstructorUsedError;

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
  $Res call({String name, List<String> dependencies});
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
    Object? dependencies = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      dependencies: null == dependencies
          ? _value.dependencies
          : dependencies // ignore: cast_nullable_to_non_nullable
              as List<String>,
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
  $Res call({String name, List<String> dependencies});
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
    Object? dependencies = null,
  }) {
    return _then(_$DeltaProviderImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      dependencies: null == dependencies
          ? _value._dependencies
          : dependencies // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$DeltaProviderImpl extends _DeltaProvider {
  const _$DeltaProviderImpl(
      {required this.name, final List<String> dependencies = const []})
      : _dependencies = dependencies,
        super._();

  @override
  final String name;
  final List<String> _dependencies;
  @override
  @JsonKey()
  List<String> get dependencies {
    if (_dependencies is EqualUnmodifiableListView) return _dependencies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dependencies);
  }

  @override
  String toString() {
    return 'DeltaProvider(name: $name, dependencies: $dependencies)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeltaProviderImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._dependencies, _dependencies));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(_dependencies));

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
      final List<String> dependencies}) = _$DeltaProviderImpl;
  const _DeltaProvider._() : super._();

  @override
  String get name;
  @override
  List<String> get dependencies;

  /// Create a copy of DeltaProvider
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeltaProviderImplCopyWith<_$DeltaProviderImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
