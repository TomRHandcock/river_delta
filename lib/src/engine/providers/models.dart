import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'models.freezed.dart';

@freezed
sealed class ProviderModel with _$ProviderModel {
  const factory ProviderModel({
    required String name,
    @Default({}) Set<String> arguments,
    @Default({}) Set<ProviderDependencyModel> dependencies,
    ProviderState? state,
  }) = _ProviderModel;
}

@freezed
sealed class ProviderDependencyModel with _$ProviderDependencyModel {
  const factory ProviderDependencyModel({
    required String name,
    @Default({}) Set<String> arguments,
  }) = _ProviderDependencyModel;
}

@freezed
sealed class ProviderState with _$ProviderState {
  const factory ProviderState({
    required String name,
    ProviderAsyncState? asyncState,
    required Map<String?, String?> fields,
    required DateTime timestamp,
  }) = _ProviderState;
}

enum ProviderAsyncState {
  loading,
  data,
  error;
}
