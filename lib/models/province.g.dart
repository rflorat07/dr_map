// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'province.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Province _$ProvinceFromJson(Map<String, dynamic> json) => _Province(
  code: json['code'] as String,
  identifier: json['identifier'] as String,
  name: json['name'] as String,
  regionCode: json['regionCode'] as String,
);

Map<String, dynamic> _$ProvinceToJson(_Province instance) => <String, dynamic>{
  'code': instance.code,
  'identifier': instance.identifier,
  'name': instance.name,
  'regionCode': instance.regionCode,
};
