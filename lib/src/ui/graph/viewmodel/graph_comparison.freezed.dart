// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'graph_comparison.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NodeComparisonProps {
  String get name;
  List<String> get arguments;

  /// Create a copy of _NodeComparisonProps
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NodeComparisonPropsCopyWith<_NodeComparisonProps> get copyWith =>
      __$NodeComparisonPropsCopyWithImpl<_NodeComparisonProps>(
          this as _NodeComparisonProps, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NodeComparisonProps &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.arguments, arguments));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(arguments));

  @override
  String toString() {
    return '_NodeComparisonProps(name: $name, arguments: $arguments)';
  }
}

/// @nodoc
abstract mixin class _$NodeComparisonPropsCopyWith<$Res> {
  factory _$NodeComparisonPropsCopyWith(_NodeComparisonProps value,
          $Res Function(_NodeComparisonProps) _then) =
      __$NodeComparisonPropsCopyWithImpl;
  @useResult
  $Res call({String name, List<String> arguments});
}

/// @nodoc
class __$NodeComparisonPropsCopyWithImpl<$Res>
    implements _$NodeComparisonPropsCopyWith<$Res> {
  __$NodeComparisonPropsCopyWithImpl(this._self, this._then);

  final _NodeComparisonProps _self;
  final $Res Function(_NodeComparisonProps) _then;

  /// Create a copy of _NodeComparisonProps
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? arguments = null,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      arguments: null == arguments
          ? _self.arguments
          : arguments // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// Adds pattern-matching-related methods to [_NodeComparisonProps].
extension _NodeComparisonPropsPatterns on _NodeComparisonProps {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(__NodeComparisonProps value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case __NodeComparisonProps() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(__NodeComparisonProps value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case __NodeComparisonProps():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(__NodeComparisonProps value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case __NodeComparisonProps() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String name, List<String> arguments)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case __NodeComparisonProps() when $default != null:
        return $default(_that.name, _that.arguments);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String name, List<String> arguments) $default,
  ) {
    final _that = this;
    switch (_that) {
      case __NodeComparisonProps():
        return $default(_that.name, _that.arguments);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String name, List<String> arguments)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case __NodeComparisonProps() when $default != null:
        return $default(_that.name, _that.arguments);
      case _:
        return null;
    }
  }
}

/// @nodoc

class __NodeComparisonProps implements _NodeComparisonProps {
  const __NodeComparisonProps(
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

  /// Create a copy of _NodeComparisonProps
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$_NodeComparisonPropsCopyWith<__NodeComparisonProps> get copyWith =>
      __$_NodeComparisonPropsCopyWithImpl<__NodeComparisonProps>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is __NodeComparisonProps &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._arguments, _arguments));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(_arguments));

  @override
  String toString() {
    return '_NodeComparisonProps(name: $name, arguments: $arguments)';
  }
}

/// @nodoc
abstract mixin class _$_NodeComparisonPropsCopyWith<$Res>
    implements _$NodeComparisonPropsCopyWith<$Res> {
  factory _$_NodeComparisonPropsCopyWith(__NodeComparisonProps value,
          $Res Function(__NodeComparisonProps) _then) =
      __$_NodeComparisonPropsCopyWithImpl;
  @override
  @useResult
  $Res call({String name, List<String> arguments});
}

/// @nodoc
class __$_NodeComparisonPropsCopyWithImpl<$Res>
    implements _$_NodeComparisonPropsCopyWith<$Res> {
  __$_NodeComparisonPropsCopyWithImpl(this._self, this._then);

  final __NodeComparisonProps _self;
  final $Res Function(__NodeComparisonProps) _then;

  /// Create a copy of _NodeComparisonProps
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? arguments = null,
  }) {
    return _then(__NodeComparisonProps(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      arguments: null == arguments
          ? _self._arguments
          : arguments // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

// dart format on
