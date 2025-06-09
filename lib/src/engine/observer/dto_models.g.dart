// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dto_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProviderListDto _$ProviderListDtoFromJson(Map<String, dynamic> json) =>
    _ProviderListDto(
      providers: (json['providers'] as List<dynamic>)
          .map((e) => ProviderDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ProviderListDtoToJson(_ProviderListDto instance) =>
    <String, dynamic>{
      'providers': instance.providers,
    };

_ProviderDto _$ProviderDtoFromJson(Map<String, dynamic> json) => _ProviderDto(
      name: json['name'] as String,
      objectId: json['objectId'] as String,
      isolateId: json['isolateId'] as String,
      stateObjectId: json['stateObjectId'] as String?,
      dependencies: (json['dependencies'] as List<dynamic>?)
              ?.map((e) =>
                  ProviderSlimDependencyDto.fromJson(e as Map<String, dynamic>))
              .toSet() ??
          const {},
    );

Map<String, dynamic> _$ProviderDtoToJson(_ProviderDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'objectId': instance.objectId,
      'isolateId': instance.isolateId,
      'stateObjectId': instance.stateObjectId,
      'dependencies': ProviderDto.dependenciesToJson(instance.dependencies),
    };

_ProviderSlimDependencyDto _$ProviderSlimDependencyDtoFromJson(
        Map<String, dynamic> json) =>
    _ProviderSlimDependencyDto(
      name: json['name'] as String,
      objectId: json['objectId'] as String,
    );

Map<String, dynamic> _$ProviderSlimDependencyDtoToJson(
        _ProviderSlimDependencyDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'objectId': instance.objectId,
    };
