// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'logical_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LogicalError {
  LogicalErrorCode get code;

  /// Create a copy of LogicalError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LogicalErrorCopyWith<LogicalError> get copyWith =>
      _$LogicalErrorCopyWithImpl<LogicalError>(
          this as LogicalError, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LogicalError &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code);

  @override
  String toString() {
    return 'LogicalError(code: $code)';
  }
}

/// @nodoc
abstract mixin class $LogicalErrorCopyWith<$Res> {
  factory $LogicalErrorCopyWith(
          LogicalError value, $Res Function(LogicalError) _then) =
      _$LogicalErrorCopyWithImpl;
  @useResult
  $Res call({LogicalErrorCode code});
}

/// @nodoc
class _$LogicalErrorCopyWithImpl<$Res> implements $LogicalErrorCopyWith<$Res> {
  _$LogicalErrorCopyWithImpl(this._self, this._then);

  final LogicalError _self;
  final $Res Function(LogicalError) _then;

  /// Create a copy of LogicalError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
  }) {
    return _then(_self.copyWith(
      code: null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as LogicalErrorCode,
    ));
  }
}

/// @nodoc

class _LogicalError extends LogicalError implements RiverDeltaError {
  const _LogicalError({required this.code}) : super._();

  @override
  final LogicalErrorCode code;

  /// Create a copy of LogicalError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LogicalErrorCopyWith<_LogicalError> get copyWith =>
      __$LogicalErrorCopyWithImpl<_LogicalError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LogicalError &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code);

  @override
  String toString() {
    return 'LogicalError(code: $code)';
  }
}

/// @nodoc
abstract mixin class _$LogicalErrorCopyWith<$Res>
    implements $LogicalErrorCopyWith<$Res> {
  factory _$LogicalErrorCopyWith(
          _LogicalError value, $Res Function(_LogicalError) _then) =
      __$LogicalErrorCopyWithImpl;
  @override
  @useResult
  $Res call({LogicalErrorCode code});
}

/// @nodoc
class __$LogicalErrorCopyWithImpl<$Res>
    implements _$LogicalErrorCopyWith<$Res> {
  __$LogicalErrorCopyWithImpl(this._self, this._then);

  final _LogicalError _self;
  final $Res Function(_LogicalError) _then;

  /// Create a copy of LogicalError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? code = null,
  }) {
    return _then(_LogicalError(
      code: null == code
          ? _self.code
          : code // ignore: cast_nullable_to_non_nullable
              as LogicalErrorCode,
    ));
  }
}

// dart format on
