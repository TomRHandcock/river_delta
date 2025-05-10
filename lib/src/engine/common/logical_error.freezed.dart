// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'logical_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LogicalError {
  LogicalErrorCode get code => throw _privateConstructorUsedError;

  /// Create a copy of LogicalError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LogicalErrorCopyWith<LogicalError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogicalErrorCopyWith<$Res> {
  factory $LogicalErrorCopyWith(
          LogicalError value, $Res Function(LogicalError) then) =
      _$LogicalErrorCopyWithImpl<$Res, LogicalError>;
  @useResult
  $Res call({LogicalErrorCode code});
}

/// @nodoc
class _$LogicalErrorCopyWithImpl<$Res, $Val extends LogicalError>
    implements $LogicalErrorCopyWith<$Res> {
  _$LogicalErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LogicalError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as LogicalErrorCode,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LogicalErrorImplCopyWith<$Res>
    implements $LogicalErrorCopyWith<$Res> {
  factory _$$LogicalErrorImplCopyWith(
          _$LogicalErrorImpl value, $Res Function(_$LogicalErrorImpl) then) =
      __$$LogicalErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LogicalErrorCode code});
}

/// @nodoc
class __$$LogicalErrorImplCopyWithImpl<$Res>
    extends _$LogicalErrorCopyWithImpl<$Res, _$LogicalErrorImpl>
    implements _$$LogicalErrorImplCopyWith<$Res> {
  __$$LogicalErrorImplCopyWithImpl(
      _$LogicalErrorImpl _value, $Res Function(_$LogicalErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of LogicalError
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
  }) {
    return _then(_$LogicalErrorImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as LogicalErrorCode,
    ));
  }
}

/// @nodoc

class _$LogicalErrorImpl extends _LogicalError {
  const _$LogicalErrorImpl({required this.code}) : super._();

  @override
  final LogicalErrorCode code;

  @override
  String toString() {
    return 'LogicalError(code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogicalErrorImpl &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code);

  /// Create a copy of LogicalError
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LogicalErrorImplCopyWith<_$LogicalErrorImpl> get copyWith =>
      __$$LogicalErrorImplCopyWithImpl<_$LogicalErrorImpl>(this, _$identity);
}

abstract class _LogicalError extends LogicalError implements RiverDeltaError {
  const factory _LogicalError({required final LogicalErrorCode code}) =
      _$LogicalErrorImpl;
  const _LogicalError._() : super._();

  @override
  LogicalErrorCode get code;

  /// Create a copy of LogicalError
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LogicalErrorImplCopyWith<_$LogicalErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
