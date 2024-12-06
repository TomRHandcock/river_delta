// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dto_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProviderListDtoImpl _$$ProviderListDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ProviderListDtoImpl(
      providers: (json['providers'] as List<dynamic>)
          .map((e) => ProviderDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ProviderListDtoImplToJson(
        _$ProviderListDtoImpl instance) =>
    <String, dynamic>{
      'providers': instance.providers,
    };

_$ProviderDtoImpl _$$ProviderDtoImplFromJson(Map<String, dynamic> json) =>
    _$ProviderDtoImpl(
      name: json['name'] as String,
      objectId: json['objectId'] as String,
      isolateId: json['isolateId'] as String,
      arguments: (json['arguments'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toSet() ??
          const {},
      dependencies: (json['dependencies'] as List<dynamic>?)
              ?.map((e) =>
                  ProviderSlimDependencyDto.fromJson(e as Map<String, dynamic>))
              .toSet() ??
          const {},
      resolvedDependencies: (json['resolvedDependencies'] as List<dynamic>?)
              ?.map((e) =>
                  ProviderDependencyDto.fromJson(e as Map<String, dynamic>))
              .toSet() ??
          const {},
    );

Map<String, dynamic> _$$ProviderDtoImplToJson(_$ProviderDtoImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'objectId': instance.objectId,
      'isolateId': instance.isolateId,
      'arguments': instance.arguments?.toList(),
      'dependencies': instance.dependencies.toList(),
      'resolvedDependencies': instance.resolvedDependencies.toList(),
    };

_$ProviderSlimDependencyDtoImpl _$$ProviderSlimDependencyDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ProviderSlimDependencyDtoImpl(
      name: json['name'] as String,
      objectId: json['objectId'] as String,
    );

Map<String, dynamic> _$$ProviderSlimDependencyDtoImplToJson(
        _$ProviderSlimDependencyDtoImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'objectId': instance.objectId,
    };

_$ProviderDependencyDtoImpl _$$ProviderDependencyDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$ProviderDependencyDtoImpl(
      name: json['name'] as String,
      arguments: (json['arguments'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toSet(),
    );

Map<String, dynamic> _$$ProviderDependencyDtoImplToJson(
        _$ProviderDependencyDtoImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'arguments': instance.arguments?.toList(),
    };
