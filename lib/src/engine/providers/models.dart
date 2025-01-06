import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'models.freezed.dart';

@freezed
class ProviderModel with _$ProviderModel {
  const factory ProviderModel({
    required String name,
    @Default({}) Set<String> arguments,
    @Default({}) Set<ProviderDependencyModel> dependencies,
  }) = _ProviderModel;
}

@freezed
class ProviderDependencyModel with _$ProviderDependencyModel {
  const factory ProviderDependencyModel({
    required String name,
    @Default({}) Set<String> arguments,
  }) = _ProviderDependencyModel;
}
