// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppConfigImpl _$$AppConfigImplFromJson(Map<String, dynamic> json) =>
    _$AppConfigImpl(
      baseUrl: json['baseUrl'] as String,
      connectionTimeout: json['connectionTimeout'] == null
          ? const Duration(seconds: 10)
          : Duration(microseconds: (json['connectionTimeout'] as num).toInt()),
      receiveTimeout: json['receiveTimeout'] == null
          ? const Duration(seconds: 15)
          : Duration(microseconds: (json['receiveTimeout'] as num).toInt()),
      sendTimeout: json['sendTimeout'] == null
          ? const Duration(seconds: 10)
          : Duration(microseconds: (json['sendTimeout'] as num).toInt()),
    );

Map<String, dynamic> _$$AppConfigImplToJson(_$AppConfigImpl instance) =>
    <String, dynamic>{
      'baseUrl': instance.baseUrl,
      'connectionTimeout': instance.connectionTimeout.inMicroseconds,
      'receiveTimeout': instance.receiveTimeout.inMicroseconds,
      'sendTimeout': instance.sendTimeout.inMicroseconds,
    };
