import 'package:freezed_annotation/freezed_annotation.dart';

part 'dto_models.freezed.dart';

part 'dto_models.g.dart';

@freezed
class ProviderListDto with _$ProviderListDto {
  const factory ProviderListDto({
    required List<ProviderDto> providers,
  }) = _ProviderListDto;

  factory ProviderListDto.fromJson(Map<String, dynamic> json) =>
      _$ProviderListDtoFromJson(json);
}

@freezed
class ProviderDto with _$ProviderDto {
  const factory ProviderDto({
    required String name,
    required String objectId,
    required String isolateId,
    @Default({}) Set<ProviderSlimDependencyDto> dependencies,
  }) = _ProviderDto;

  factory ProviderDto.fromJson(Map<String, dynamic> json) =>
      _$ProviderDtoFromJson(json);
}

@freezed
class ProviderSlimDependencyDto with _$ProviderSlimDependencyDto {
  const factory ProviderSlimDependencyDto({
    required String name,
    required String objectId,
  }) = _ProviderSlimDependencyDto;

  factory ProviderSlimDependencyDto.fromJson(Map<String, dynamic> json) =>
      _$ProviderSlimDependencyDtoFromJson(json);
}