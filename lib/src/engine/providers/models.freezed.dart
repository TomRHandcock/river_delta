// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProviderModel {
  String get name;
  Set<String> get arguments;
  Set<ProviderDependencyModel> get dependencies;
  ProviderState? get state;

  /// Create a copy of ProviderModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProviderModelCopyWith<ProviderModel> get copyWith =>
      _$ProviderModelCopyWithImpl<ProviderModel>(
          this as ProviderModel, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProviderModel &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.arguments, arguments) &&
            const DeepCollectionEquality()
                .equals(other.dependencies, dependencies) &&
            (identical(other.state, state) || other.state == state));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      const DeepCollectionEquality().hash(arguments),
      const DeepCollectionEquality().hash(dependencies),
      state);

  @override
  String toString() {
    return 'ProviderModel(name: $name, arguments: $arguments, dependencies: $dependencies, state: $state)';
  }
}

/// @nodoc
abstract mixin class $ProviderModelCopyWith<$Res> {
  factory $ProviderModelCopyWith(
          ProviderModel value, $Res Function(ProviderModel) _then) =
      _$ProviderModelCopyWithImpl;
  @useResult
  $Res call(
      {String name,
      Set<String> arguments,
      Set<ProviderDependencyModel> dependencies,
      ProviderState? state});

  $ProviderStateCopyWith<$Res>? get state;
}

/// @nodoc
class _$ProviderModelCopyWithImpl<$Res>
    implements $ProviderModelCopyWith<$Res> {
  _$ProviderModelCopyWithImpl(this._self, this._then);

  final ProviderModel _self;
  final $Res Function(ProviderModel) _then;

  /// Create a copy of ProviderModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? arguments = null,
    Object? dependencies = null,
    Object? state = freezed,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      arguments: null == arguments
          ? _self.arguments
          : arguments // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      dependencies: null == dependencies
          ? _self.dependencies
          : dependencies // ignore: cast_nullable_to_non_nullable
              as Set<ProviderDependencyModel>,
      state: freezed == state
          ? _self.state
          : state // ignore: cast_nullable_to_non_nullable
              as ProviderState?,
    ));
  }

  /// Create a copy of ProviderModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProviderStateCopyWith<$Res>? get state {
    if (_self.state == null) {
      return null;
    }

    return $ProviderStateCopyWith<$Res>(_self.state!, (value) {
      return _then(_self.copyWith(state: value));
    });
  }
}

/// Adds pattern-matching-related methods to [ProviderModel].
extension ProviderModelPatterns on ProviderModel {
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
    TResult Function(_ProviderModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ProviderModel() when $default != null:
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
    TResult Function(_ProviderModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProviderModel():
        return $default(_that);
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
    TResult? Function(_ProviderModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProviderModel() when $default != null:
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
    TResult Function(String name, Set<String> arguments,
            Set<ProviderDependencyModel> dependencies, ProviderState? state)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ProviderModel() when $default != null:
        return $default(
            _that.name, _that.arguments, _that.dependencies, _that.state);
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
    TResult Function(String name, Set<String> arguments,
            Set<ProviderDependencyModel> dependencies, ProviderState? state)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProviderModel():
        return $default(
            _that.name, _that.arguments, _that.dependencies, _that.state);
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
    TResult? Function(String name, Set<String> arguments,
            Set<ProviderDependencyModel> dependencies, ProviderState? state)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProviderModel() when $default != null:
        return $default(
            _that.name, _that.arguments, _that.dependencies, _that.state);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _ProviderModel implements ProviderModel {
  const _ProviderModel(
      {required this.name,
      final Set<String> arguments = const {},
      final Set<ProviderDependencyModel> dependencies = const {},
      this.state})
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
  final ProviderState? state;

  /// Create a copy of ProviderModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ProviderModelCopyWith<_ProviderModel> get copyWith =>
      __$ProviderModelCopyWithImpl<_ProviderModel>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProviderModel &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._arguments, _arguments) &&
            const DeepCollectionEquality()
                .equals(other._dependencies, _dependencies) &&
            (identical(other.state, state) || other.state == state));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      const DeepCollectionEquality().hash(_arguments),
      const DeepCollectionEquality().hash(_dependencies),
      state);

  @override
  String toString() {
    return 'ProviderModel(name: $name, arguments: $arguments, dependencies: $dependencies, state: $state)';
  }
}

/// @nodoc
abstract mixin class _$ProviderModelCopyWith<$Res>
    implements $ProviderModelCopyWith<$Res> {
  factory _$ProviderModelCopyWith(
          _ProviderModel value, $Res Function(_ProviderModel) _then) =
      __$ProviderModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String name,
      Set<String> arguments,
      Set<ProviderDependencyModel> dependencies,
      ProviderState? state});

  @override
  $ProviderStateCopyWith<$Res>? get state;
}

/// @nodoc
class __$ProviderModelCopyWithImpl<$Res>
    implements _$ProviderModelCopyWith<$Res> {
  __$ProviderModelCopyWithImpl(this._self, this._then);

  final _ProviderModel _self;
  final $Res Function(_ProviderModel) _then;

  /// Create a copy of ProviderModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? arguments = null,
    Object? dependencies = null,
    Object? state = freezed,
  }) {
    return _then(_ProviderModel(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      arguments: null == arguments
          ? _self._arguments
          : arguments // ignore: cast_nullable_to_non_nullable
              as Set<String>,
      dependencies: null == dependencies
          ? _self._dependencies
          : dependencies // ignore: cast_nullable_to_non_nullable
              as Set<ProviderDependencyModel>,
      state: freezed == state
          ? _self.state
          : state // ignore: cast_nullable_to_non_nullable
              as ProviderState?,
    ));
  }

  /// Create a copy of ProviderModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProviderStateCopyWith<$Res>? get state {
    if (_self.state == null) {
      return null;
    }

    return $ProviderStateCopyWith<$Res>(_self.state!, (value) {
      return _then(_self.copyWith(state: value));
    });
  }
}

/// @nodoc
mixin _$ProviderDependencyModel {
  String get name;
  Set<String> get arguments;

  /// Create a copy of ProviderDependencyModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProviderDependencyModelCopyWith<ProviderDependencyModel> get copyWith =>
      _$ProviderDependencyModelCopyWithImpl<ProviderDependencyModel>(
          this as ProviderDependencyModel, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProviderDependencyModel &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.arguments, arguments));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(arguments));

  @override
  String toString() {
    return 'ProviderDependencyModel(name: $name, arguments: $arguments)';
  }
}

/// @nodoc
abstract mixin class $ProviderDependencyModelCopyWith<$Res> {
  factory $ProviderDependencyModelCopyWith(ProviderDependencyModel value,
          $Res Function(ProviderDependencyModel) _then) =
      _$ProviderDependencyModelCopyWithImpl;
  @useResult
  $Res call({String name, Set<String> arguments});
}

/// @nodoc
class _$ProviderDependencyModelCopyWithImpl<$Res>
    implements $ProviderDependencyModelCopyWith<$Res> {
  _$ProviderDependencyModelCopyWithImpl(this._self, this._then);

  final ProviderDependencyModel _self;
  final $Res Function(ProviderDependencyModel) _then;

  /// Create a copy of ProviderDependencyModel
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
              as Set<String>,
    ));
  }
}

/// Adds pattern-matching-related methods to [ProviderDependencyModel].
extension ProviderDependencyModelPatterns on ProviderDependencyModel {
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
    TResult Function(_ProviderDependencyModel value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ProviderDependencyModel() when $default != null:
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
    TResult Function(_ProviderDependencyModel value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProviderDependencyModel():
        return $default(_that);
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
    TResult? Function(_ProviderDependencyModel value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProviderDependencyModel() when $default != null:
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
    TResult Function(String name, Set<String> arguments)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ProviderDependencyModel() when $default != null:
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
    TResult Function(String name, Set<String> arguments) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProviderDependencyModel():
        return $default(_that.name, _that.arguments);
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
    TResult? Function(String name, Set<String> arguments)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProviderDependencyModel() when $default != null:
        return $default(_that.name, _that.arguments);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _ProviderDependencyModel implements ProviderDependencyModel {
  const _ProviderDependencyModel(
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

  /// Create a copy of ProviderDependencyModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ProviderDependencyModelCopyWith<_ProviderDependencyModel> get copyWith =>
      __$ProviderDependencyModelCopyWithImpl<_ProviderDependencyModel>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProviderDependencyModel &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._arguments, _arguments));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(_arguments));

  @override
  String toString() {
    return 'ProviderDependencyModel(name: $name, arguments: $arguments)';
  }
}

/// @nodoc
abstract mixin class _$ProviderDependencyModelCopyWith<$Res>
    implements $ProviderDependencyModelCopyWith<$Res> {
  factory _$ProviderDependencyModelCopyWith(_ProviderDependencyModel value,
          $Res Function(_ProviderDependencyModel) _then) =
      __$ProviderDependencyModelCopyWithImpl;
  @override
  @useResult
  $Res call({String name, Set<String> arguments});
}

/// @nodoc
class __$ProviderDependencyModelCopyWithImpl<$Res>
    implements _$ProviderDependencyModelCopyWith<$Res> {
  __$ProviderDependencyModelCopyWithImpl(this._self, this._then);

  final _ProviderDependencyModel _self;
  final $Res Function(_ProviderDependencyModel) _then;

  /// Create a copy of ProviderDependencyModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? arguments = null,
  }) {
    return _then(_ProviderDependencyModel(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      arguments: null == arguments
          ? _self._arguments
          : arguments // ignore: cast_nullable_to_non_nullable
              as Set<String>,
    ));
  }
}

/// @nodoc
mixin _$ProviderState {
  String get name;
  ProviderAsyncState? get asyncState;
  Map<String?, String?> get fields;
  DateTime get timestamp;

  /// Create a copy of ProviderState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProviderStateCopyWith<ProviderState> get copyWith =>
      _$ProviderStateCopyWithImpl<ProviderState>(
          this as ProviderState, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProviderState &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.asyncState, asyncState) ||
                other.asyncState == asyncState) &&
            const DeepCollectionEquality().equals(other.fields, fields) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, asyncState,
      const DeepCollectionEquality().hash(fields), timestamp);

  @override
  String toString() {
    return 'ProviderState(name: $name, asyncState: $asyncState, fields: $fields, timestamp: $timestamp)';
  }
}

/// @nodoc
abstract mixin class $ProviderStateCopyWith<$Res> {
  factory $ProviderStateCopyWith(
          ProviderState value, $Res Function(ProviderState) _then) =
      _$ProviderStateCopyWithImpl;
  @useResult
  $Res call(
      {String name,
      ProviderAsyncState? asyncState,
      Map<String?, String?> fields,
      DateTime timestamp});
}

/// @nodoc
class _$ProviderStateCopyWithImpl<$Res>
    implements $ProviderStateCopyWith<$Res> {
  _$ProviderStateCopyWithImpl(this._self, this._then);

  final ProviderState _self;
  final $Res Function(ProviderState) _then;

  /// Create a copy of ProviderState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? asyncState = freezed,
    Object? fields = null,
    Object? timestamp = null,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      asyncState: freezed == asyncState
          ? _self.asyncState
          : asyncState // ignore: cast_nullable_to_non_nullable
              as ProviderAsyncState?,
      fields: null == fields
          ? _self.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as Map<String?, String?>,
      timestamp: null == timestamp
          ? _self.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// Adds pattern-matching-related methods to [ProviderState].
extension ProviderStatePatterns on ProviderState {
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
    TResult Function(_ProviderState value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ProviderState() when $default != null:
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
    TResult Function(_ProviderState value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProviderState():
        return $default(_that);
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
    TResult? Function(_ProviderState value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProviderState() when $default != null:
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
    TResult Function(String name, ProviderAsyncState? asyncState,
            Map<String?, String?> fields, DateTime timestamp)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ProviderState() when $default != null:
        return $default(
            _that.name, _that.asyncState, _that.fields, _that.timestamp);
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
    TResult Function(String name, ProviderAsyncState? asyncState,
            Map<String?, String?> fields, DateTime timestamp)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProviderState():
        return $default(
            _that.name, _that.asyncState, _that.fields, _that.timestamp);
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
    TResult? Function(String name, ProviderAsyncState? asyncState,
            Map<String?, String?> fields, DateTime timestamp)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProviderState() when $default != null:
        return $default(
            _that.name, _that.asyncState, _that.fields, _that.timestamp);
      case _:
        return null;
    }
  }
}

/// @nodoc

class _ProviderState implements ProviderState {
  const _ProviderState(
      {required this.name,
      this.asyncState,
      required final Map<String?, String?> fields,
      required this.timestamp})
      : _fields = fields;

  @override
  final String name;
  @override
  final ProviderAsyncState? asyncState;
  final Map<String?, String?> _fields;
  @override
  Map<String?, String?> get fields {
    if (_fields is EqualUnmodifiableMapView) return _fields;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_fields);
  }

  @override
  final DateTime timestamp;

  /// Create a copy of ProviderState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ProviderStateCopyWith<_ProviderState> get copyWith =>
      __$ProviderStateCopyWithImpl<_ProviderState>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProviderState &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.asyncState, asyncState) ||
                other.asyncState == asyncState) &&
            const DeepCollectionEquality().equals(other._fields, _fields) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, asyncState,
      const DeepCollectionEquality().hash(_fields), timestamp);

  @override
  String toString() {
    return 'ProviderState(name: $name, asyncState: $asyncState, fields: $fields, timestamp: $timestamp)';
  }
}

/// @nodoc
abstract mixin class _$ProviderStateCopyWith<$Res>
    implements $ProviderStateCopyWith<$Res> {
  factory _$ProviderStateCopyWith(
          _ProviderState value, $Res Function(_ProviderState) _then) =
      __$ProviderStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String name,
      ProviderAsyncState? asyncState,
      Map<String?, String?> fields,
      DateTime timestamp});
}

/// @nodoc
class __$ProviderStateCopyWithImpl<$Res>
    implements _$ProviderStateCopyWith<$Res> {
  __$ProviderStateCopyWithImpl(this._self, this._then);

  final _ProviderState _self;
  final $Res Function(_ProviderState) _then;

  /// Create a copy of ProviderState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? asyncState = freezed,
    Object? fields = null,
    Object? timestamp = null,
  }) {
    return _then(_ProviderState(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      asyncState: freezed == asyncState
          ? _self.asyncState
          : asyncState // ignore: cast_nullable_to_non_nullable
              as ProviderAsyncState?,
      fields: null == fields
          ? _self._fields
          : fields // ignore: cast_nullable_to_non_nullable
              as Map<String?, String?>,
      timestamp: null == timestamp
          ? _self.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

// dart format on
