// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'graph_comparison.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NodeComparisonProps {
  String get name => throw _privateConstructorUsedError;
  List<String> get arguments => throw _privateConstructorUsedError;

  /// Create a copy of _NodeComparisonProps
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$NodeComparisonPropsCopyWith<_NodeComparisonProps> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$NodeComparisonPropsCopyWith<$Res> {
  factory _$NodeComparisonPropsCopyWith(_NodeComparisonProps value,
          $Res Function(_NodeComparisonProps) then) =
      __$NodeComparisonPropsCopyWithImpl<$Res, _NodeComparisonProps>;
  @useResult
  $Res call({String name, List<String> arguments});
}

/// @nodoc
class __$NodeComparisonPropsCopyWithImpl<$Res,
        $Val extends _NodeComparisonProps>
    implements _$NodeComparisonPropsCopyWith<$Res> {
  __$NodeComparisonPropsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of _NodeComparisonProps
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
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NodeComparisonPropsImplCopyWith<$Res>
    implements _$NodeComparisonPropsCopyWith<$Res> {
  factory _$$_NodeComparisonPropsImplCopyWith(_$_NodeComparisonPropsImpl value,
          $Res Function(_$_NodeComparisonPropsImpl) then) =
      __$$_NodeComparisonPropsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, List<String> arguments});
}

/// @nodoc
class __$$_NodeComparisonPropsImplCopyWithImpl<$Res>
    extends __$NodeComparisonPropsCopyWithImpl<$Res, _$_NodeComparisonPropsImpl>
    implements _$$_NodeComparisonPropsImplCopyWith<$Res> {
  __$$_NodeComparisonPropsImplCopyWithImpl(_$_NodeComparisonPropsImpl _value,
      $Res Function(_$_NodeComparisonPropsImpl) _then)
      : super(_value, _then);

  /// Create a copy of _NodeComparisonProps
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? arguments = null,
  }) {
    return _then(_$_NodeComparisonPropsImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      arguments: null == arguments
          ? _value._arguments
          : arguments // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_NodeComparisonPropsImpl implements __NodeComparisonProps {
  const _$_NodeComparisonPropsImpl(
      {required this.name, required final List<String> arguments})
      : _arguments = arguments;

  @override
  final String name;
  final List<String> _arguments;
  @override
  List<String> get arguments {
    if (_arguments is EqualUnmodifiableListView) return _arguments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_arguments);
  }

  @override
  String toString() {
    return '_NodeComparisonProps(name: $name, arguments: $arguments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NodeComparisonPropsImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._arguments, _arguments));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(_arguments));

  /// Create a copy of _NodeComparisonProps
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$_NodeComparisonPropsImplCopyWith<_$_NodeComparisonPropsImpl>
      get copyWith =>
          __$$_NodeComparisonPropsImplCopyWithImpl<_$_NodeComparisonPropsImpl>(
              this, _$identity);
}

abstract class __NodeComparisonProps implements _NodeComparisonProps {
  const factory __NodeComparisonProps(
      {required final String name,
      required final List<String> arguments}) = _$_NodeComparisonPropsImpl;

  @override
  String get name;
  @override
  List<String> get arguments;

  /// Create a copy of _NodeComparisonProps
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$_NodeComparisonPropsImplCopyWith<_$_NodeComparisonPropsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
