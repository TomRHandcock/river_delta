import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:river_delta/src/engine/common/error.dart';

part 'logical_error.freezed.dart';

enum LogicalErrorCode {
  failedToReadState("STA999"),
  failedToReadAsyncState("STA998");

  const LogicalErrorCode(this.code) : assert(code.length == 6);

  final String code;
}

@freezed
class LogicalError with _$LogicalError implements RiverDeltaError {
  const LogicalError._();

  @Implements<RiverDeltaError>()
  const factory LogicalError({
    required LogicalErrorCode code,
  }) = _LogicalError;

  @override
  String get errorCode => code.code;
}
