// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'city_two.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MyCity _$MyCityFromJson(Map<String, dynamic> json) => MyCity(
      json['city'] as String,
      (json['streets'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$MyCityToJson(MyCity instance) => <String, dynamic>{
      'city': instance.city,
      'streets': instance.streets,
    };
