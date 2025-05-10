import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_delta/src/engine/common/logical_error.dart';
import 'package:river_delta/src/engine/providers/models.dart';
import 'package:river_delta/src/engine/providers/vm_service.dart';
import 'package:river_delta/src/engine/utils/utils.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:vm_service/vm_service.dart';

part 'field_reader.g.dart';

@riverpod
Future<FieldReader> fieldReader(Ref ref) async {
  final vmService = await ref.watch(vmServiceProvider.future);
  return FieldReader(vmService);
}

class FieldReader {
  final VmService vmService;

  const FieldReader(this.vmService);

  static const _asyncValueClassNames = {
    "AsyncLoading",
    "AsyncError",
    "AsyncData"
  };
  static const _asyncValuePackage = "riverpod";

  Future<ProviderState?> readState(
    String isolateId,
    String? stateObjectId,
  ) async {
    if (stateObjectId == null) {
      return null;
    }
    final object = (await vmService.evaluate(isolateId, stateObjectId, "this"))
        .asOrNull<InstanceRef>();
    if (object == null) {
      return null;
    }
    if (_isAsyncValue(object)) {
      return _extractAsyncState(isolateId, object);
    } else {
      return null;
    }
  }

  bool _isAsyncValue(InstanceRef instanceRef) {
    final classRef = instanceRef.classRef;
    final classNameMatches =
        classRef?.name?.let((name) => _asyncValueClassNames.contains(name)) ??
            false;
    final classPackageMatches =
        classRef?.library?.uri?.contains(_asyncValuePackage) ?? false;
    return classNameMatches && classPackageMatches;
  }

  Future<ProviderState> _extractAsyncState(
      String isolateId, InstanceRef instanceRef) async {
    final asyncState = switch (instanceRef.classRef?.name) {
      "AsyncLoading" => ProviderAsyncState.loading,
      "AsyncError" => ProviderAsyncState.error,
      "AsyncData" => ProviderAsyncState.data,
      _ => null
    };
    final valueObjectId = instanceRef.id;
    if (valueObjectId == null) {
      throw LogicalError(code: LogicalErrorCode.failedToReadAsyncState);
    }
    final value =
        (await vmService.evaluate(isolateId, valueObjectId, "this.valueOrNull"))
            .asOrNull<InstanceRef>();
    if (value == null) {
      throw LogicalError(code: LogicalErrorCode.failedToReadAsyncState);
    }
    final valueClassId = value.classRef?.id;
    if (valueClassId == null) {
      throw LogicalError(code: LogicalErrorCode.failedToReadAsyncState);
    }
    final clazz =
        (await vmService.getObject(isolateId, valueClassId)).asOrNull<Class>();
    return ProviderState(
      name: clazz?.name ?? "Unknown",
      fields: {},
      asyncState: asyncState,
      timestamp: DateTime.now(),
    );
  }
}
