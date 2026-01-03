// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dto_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProviderListDto {
  List<ProviderDto> get providers;

  /// Create a copy of ProviderListDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProviderListDtoCopyWith<ProviderListDto> get copyWith =>
      _$ProviderListDtoCopyWithImpl<ProviderListDto>(
          this as ProviderListDto, _$identity);

  /// Serializes this ProviderListDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProviderListDto &&
            const DeepCollectionEquality().equals(other.providers, providers));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(providers));

  @override
  String toString() {
    return 'ProviderListDto(providers: $providers)';
  }
}

/// @nodoc
abstract mixin class $ProviderListDtoCopyWith<$Res> {
  factory $ProviderListDtoCopyWith(
          ProviderListDto value, $Res Function(ProviderListDto) _then) =
      _$ProviderListDtoCopyWithImpl;
  @useResult
  $Res call({List<ProviderDto> providers});
}

/// @nodoc
class _$ProviderListDtoCopyWithImpl<$Res>
    implements $ProviderListDtoCopyWith<$Res> {
  _$ProviderListDtoCopyWithImpl(this._self, this._then);

  final ProviderListDto _self;
  final $Res Function(ProviderListDto) _then;

  /// Create a copy of ProviderListDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? providers = null,
  }) {
    return _then(_self.copyWith(
      providers: null == providers
          ? _self.providers
          : providers // ignore: cast_nullable_to_non_nullable
              as List<ProviderDto>,
    ));
  }
}

/// Adds pattern-matching-related methods to [ProviderListDto].
extension ProviderListDtoPatterns on ProviderListDto {
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
    TResult Function(_ProviderListDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ProviderListDto() when $default != null:
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
    TResult Function(_ProviderListDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProviderListDto():
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
    TResult? Function(_ProviderListDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProviderListDto() when $default != null:
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
    TResult Function(List<ProviderDto> providers)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ProviderListDto() when $default != null:
        return $default(_that.providers);
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
    TResult Function(List<ProviderDto> providers) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProviderListDto():
        return $default(_that.providers);
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
    TResult? Function(List<ProviderDto> providers)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProviderListDto() when $default != null:
        return $default(_that.providers);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ProviderListDto implements ProviderListDto {
  const _ProviderListDto({required final List<ProviderDto> providers})
      : _providers = providers;
  factory _ProviderListDto.fromJson(Map<String, dynamic> json) =>
      _$ProviderListDtoFromJson(json);

  final List<ProviderDto> _providers;
  @override
  List<ProviderDto> get providers {
    if (_providers is EqualUnmodifiableListView) return _providers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_providers);
  }

  /// Create a copy of ProviderListDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ProviderListDtoCopyWith<_ProviderListDto> get copyWith =>
      __$ProviderListDtoCopyWithImpl<_ProviderListDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ProviderListDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProviderListDto &&
            const DeepCollectionEquality()
                .equals(other._providers, _providers));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_providers));

  @override
  String toString() {
    return 'ProviderListDto(providers: $providers)';
  }
}

/// @nodoc
abstract mixin class _$ProviderListDtoCopyWith<$Res>
    implements $ProviderListDtoCopyWith<$Res> {
  factory _$ProviderListDtoCopyWith(
          _ProviderListDto value, $Res Function(_ProviderListDto) _then) =
      __$ProviderListDtoCopyWithImpl;
  @override
  @useResult
  $Res call({List<ProviderDto> providers});
}

/// @nodoc
class __$ProviderListDtoCopyWithImpl<$Res>
    implements _$ProviderListDtoCopyWith<$Res> {
  __$ProviderListDtoCopyWithImpl(this._self, this._then);

  final _ProviderListDto _self;
  final $Res Function(_ProviderListDto) _then;

  /// Create a copy of ProviderListDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? providers = null,
  }) {
    return _then(_ProviderListDto(
      providers: null == providers
          ? _self._providers
          : providers // ignore: cast_nullable_to_non_nullable
              as List<ProviderDto>,
    ));
  }
}

/// @nodoc
mixin _$ProviderDto {
  String get name;
  String get objectId;
  String get isolateId;
  String? get stateObjectId;
  @JsonKey(toJson: ProviderDto.dependenciesToJson)
  Set<ProviderSlimDependencyDto> get dependencies;

  /// Create a copy of ProviderDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProviderDtoCopyWith<ProviderDto> get copyWith =>
      _$ProviderDtoCopyWithImpl<ProviderDto>(this as ProviderDto, _$identity);

  /// Serializes this ProviderDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProviderDto &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.objectId, objectId) ||
                other.objectId == objectId) &&
            (identical(other.isolateId, isolateId) ||
                other.isolateId == isolateId) &&
            (identical(other.stateObjectId, stateObjectId) ||
                other.stateObjectId == stateObjectId) &&
            const DeepCollectionEquality()
                .equals(other.dependencies, dependencies));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, objectId, isolateId,
      stateObjectId, const DeepCollectionEquality().hash(dependencies));

  @override
  String toString() {
    return 'ProviderDto(name: $name, objectId: $objectId, isolateId: $isolateId, stateObjectId: $stateObjectId, dependencies: $dependencies)';
  }
}

/// @nodoc
abstract mixin class $ProviderDtoCopyWith<$Res> {
  factory $ProviderDtoCopyWith(
          ProviderDto value, $Res Function(ProviderDto) _then) =
      _$ProviderDtoCopyWithImpl;
  @useResult
  $Res call(
      {String name,
      String objectId,
      String isolateId,
      String? stateObjectId,
      @JsonKey(toJson: ProviderDto.dependenciesToJson)
      Set<ProviderSlimDependencyDto> dependencies});
}

/// @nodoc
class _$ProviderDtoCopyWithImpl<$Res> implements $ProviderDtoCopyWith<$Res> {
  _$ProviderDtoCopyWithImpl(this._self, this._then);

  final ProviderDto _self;
  final $Res Function(ProviderDto) _then;

  /// Create a copy of ProviderDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? objectId = null,
    Object? isolateId = null,
    Object? stateObjectId = freezed,
    Object? dependencies = null,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      objectId: null == objectId
          ? _self.objectId
          : objectId // ignore: cast_nullable_to_non_nullable
              as String,
      isolateId: null == isolateId
          ? _self.isolateId
          : isolateId // ignore: cast_nullable_to_non_nullable
              as String,
      stateObjectId: freezed == stateObjectId
          ? _self.stateObjectId
          : stateObjectId // ignore: cast_nullable_to_non_nullable
              as String?,
      dependencies: null == dependencies
          ? _self.dependencies
          : dependencies // ignore: cast_nullable_to_non_nullable
              as Set<ProviderSlimDependencyDto>,
    ));
  }
}

/// Adds pattern-matching-related methods to [ProviderDto].
extension ProviderDtoPatterns on ProviderDto {
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
    TResult Function(_ProviderDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ProviderDto() when $default != null:
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
    TResult Function(_ProviderDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProviderDto():
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
    TResult? Function(_ProviderDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProviderDto() when $default != null:
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
    TResult Function(
            String name,
            String objectId,
            String isolateId,
            String? stateObjectId,
            @JsonKey(toJson: ProviderDto.dependenciesToJson)
            Set<ProviderSlimDependencyDto> dependencies)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ProviderDto() when $default != null:
        return $default(_that.name, _that.objectId, _that.isolateId,
            _that.stateObjectId, _that.dependencies);
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
    TResult Function(
            String name,
            String objectId,
            String isolateId,
            String? stateObjectId,
            @JsonKey(toJson: ProviderDto.dependenciesToJson)
            Set<ProviderSlimDependencyDto> dependencies)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProviderDto():
        return $default(_that.name, _that.objectId, _that.isolateId,
            _that.stateObjectId, _that.dependencies);
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
    TResult? Function(
            String name,
            String objectId,
            String isolateId,
            String? stateObjectId,
            @JsonKey(toJson: ProviderDto.dependenciesToJson)
            Set<ProviderSlimDependencyDto> dependencies)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProviderDto() when $default != null:
        return $default(_that.name, _that.objectId, _that.isolateId,
            _that.stateObjectId, _that.dependencies);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ProviderDto implements ProviderDto {
  const _ProviderDto(
      {required this.name,
      required this.objectId,
      required this.isolateId,
      required this.stateObjectId,
      @JsonKey(toJson: ProviderDto.dependenciesToJson)
      final Set<ProviderSlimDependencyDto> dependencies = const {}})
      : _dependencies = dependencies;
  factory _ProviderDto.fromJson(Map<String, dynamic> json) =>
      _$ProviderDtoFromJson(json);

  @override
  final String name;
  @override
  final String objectId;
  @override
  final String isolateId;
  @override
  final String? stateObjectId;
  final Set<ProviderSlimDependencyDto> _dependencies;
  @override
  @JsonKey(toJson: ProviderDto.dependenciesToJson)
  Set<ProviderSlimDependencyDto> get dependencies {
    if (_dependencies is EqualUnmodifiableSetView) return _dependencies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_dependencies);
  }

  /// Create a copy of ProviderDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ProviderDtoCopyWith<_ProviderDto> get copyWith =>
      __$ProviderDtoCopyWithImpl<_ProviderDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ProviderDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProviderDto &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.objectId, objectId) ||
                other.objectId == objectId) &&
            (identical(other.isolateId, isolateId) ||
                other.isolateId == isolateId) &&
            (identical(other.stateObjectId, stateObjectId) ||
                other.stateObjectId == stateObjectId) &&
            const DeepCollectionEquality()
                .equals(other._dependencies, _dependencies));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, objectId, isolateId,
      stateObjectId, const DeepCollectionEquality().hash(_dependencies));

  @override
  String toString() {
    return 'ProviderDto(name: $name, objectId: $objectId, isolateId: $isolateId, stateObjectId: $stateObjectId, dependencies: $dependencies)';
  }
}

/// @nodoc
abstract mixin class _$ProviderDtoCopyWith<$Res>
    implements $ProviderDtoCopyWith<$Res> {
  factory _$ProviderDtoCopyWith(
          _ProviderDto value, $Res Function(_ProviderDto) _then) =
      __$ProviderDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String name,
      String objectId,
      String isolateId,
      String? stateObjectId,
      @JsonKey(toJson: ProviderDto.dependenciesToJson)
      Set<ProviderSlimDependencyDto> dependencies});
}

/// @nodoc
class __$ProviderDtoCopyWithImpl<$Res> implements _$ProviderDtoCopyWith<$Res> {
  __$ProviderDtoCopyWithImpl(this._self, this._then);

  final _ProviderDto _self;
  final $Res Function(_ProviderDto) _then;

  /// Create a copy of ProviderDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? objectId = null,
    Object? isolateId = null,
    Object? stateObjectId = freezed,
    Object? dependencies = null,
  }) {
    return _then(_ProviderDto(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      objectId: null == objectId
          ? _self.objectId
          : objectId // ignore: cast_nullable_to_non_nullable
              as String,
      isolateId: null == isolateId
          ? _self.isolateId
          : isolateId // ignore: cast_nullable_to_non_nullable
              as String,
      stateObjectId: freezed == stateObjectId
          ? _self.stateObjectId
          : stateObjectId // ignore: cast_nullable_to_non_nullable
              as String?,
      dependencies: null == dependencies
          ? _self._dependencies
          : dependencies // ignore: cast_nullable_to_non_nullable
              as Set<ProviderSlimDependencyDto>,
    ));
  }
}

/// @nodoc
mixin _$ProviderSlimDependencyDto {
  String get name;
  String get objectId;

  /// Create a copy of ProviderSlimDependencyDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProviderSlimDependencyDtoCopyWith<ProviderSlimDependencyDto> get copyWith =>
      _$ProviderSlimDependencyDtoCopyWithImpl<ProviderSlimDependencyDto>(
          this as ProviderSlimDependencyDto, _$identity);

  /// Serializes this ProviderSlimDependencyDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProviderSlimDependencyDto &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.objectId, objectId) ||
                other.objectId == objectId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, objectId);

  @override
  String toString() {
    return 'ProviderSlimDependencyDto(name: $name, objectId: $objectId)';
  }
}

/// @nodoc
abstract mixin class $ProviderSlimDependencyDtoCopyWith<$Res> {
  factory $ProviderSlimDependencyDtoCopyWith(ProviderSlimDependencyDto value,
          $Res Function(ProviderSlimDependencyDto) _then) =
      _$ProviderSlimDependencyDtoCopyWithImpl;
  @useResult
  $Res call({String name, String objectId});
}

/// @nodoc
class _$ProviderSlimDependencyDtoCopyWithImpl<$Res>
    implements $ProviderSlimDependencyDtoCopyWith<$Res> {
  _$ProviderSlimDependencyDtoCopyWithImpl(this._self, this._then);

  final ProviderSlimDependencyDto _self;
  final $Res Function(ProviderSlimDependencyDto) _then;

  /// Create a copy of ProviderSlimDependencyDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? objectId = null,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      objectId: null == objectId
          ? _self.objectId
          : objectId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [ProviderSlimDependencyDto].
extension ProviderSlimDependencyDtoPatterns on ProviderSlimDependencyDto {
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
    TResult Function(_ProviderSlimDependencyDto value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ProviderSlimDependencyDto() when $default != null:
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
    TResult Function(_ProviderSlimDependencyDto value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProviderSlimDependencyDto():
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
    TResult? Function(_ProviderSlimDependencyDto value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProviderSlimDependencyDto() when $default != null:
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
    TResult Function(String name, String objectId)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ProviderSlimDependencyDto() when $default != null:
        return $default(_that.name, _that.objectId);
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
    TResult Function(String name, String objectId) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProviderSlimDependencyDto():
        return $default(_that.name, _that.objectId);
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
    TResult? Function(String name, String objectId)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProviderSlimDependencyDto() when $default != null:
        return $default(_that.name, _that.objectId);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ProviderSlimDependencyDto implements ProviderSlimDependencyDto {
  const _ProviderSlimDependencyDto(
      {required this.name, required this.objectId});
  factory _ProviderSlimDependencyDto.fromJson(Map<String, dynamic> json) =>
      _$ProviderSlimDependencyDtoFromJson(json);

  @override
  final String name;
  @override
  final String objectId;

  /// Create a copy of ProviderSlimDependencyDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ProviderSlimDependencyDtoCopyWith<_ProviderSlimDependencyDto>
      get copyWith =>
          __$ProviderSlimDependencyDtoCopyWithImpl<_ProviderSlimDependencyDto>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ProviderSlimDependencyDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProviderSlimDependencyDto &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.objectId, objectId) ||
                other.objectId == objectId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, objectId);

  @override
  String toString() {
    return 'ProviderSlimDependencyDto(name: $name, objectId: $objectId)';
  }
}

/// @nodoc
abstract mixin class _$ProviderSlimDependencyDtoCopyWith<$Res>
    implements $ProviderSlimDependencyDtoCopyWith<$Res> {
  factory _$ProviderSlimDependencyDtoCopyWith(_ProviderSlimDependencyDto value,
          $Res Function(_ProviderSlimDependencyDto) _then) =
      __$ProviderSlimDependencyDtoCopyWithImpl;
  @override
  @useResult
  $Res call({String name, String objectId});
}

/// @nodoc
class __$ProviderSlimDependencyDtoCopyWithImpl<$Res>
    implements _$ProviderSlimDependencyDtoCopyWith<$Res> {
  __$ProviderSlimDependencyDtoCopyWithImpl(this._self, this._then);

  final _ProviderSlimDependencyDto _self;
  final $Res Function(_ProviderSlimDependencyDto) _then;

  /// Create a copy of ProviderSlimDependencyDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? objectId = null,
  }) {
    return _then(_ProviderSlimDependencyDto(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      objectId: null == objectId
          ? _self.objectId
          : objectId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
