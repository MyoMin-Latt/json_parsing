// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shape_two.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MyShape _$MyShapeFromJson(Map<String, dynamic> json) => MyShape(
      json['shape'] as String,
      Property.fromJson(json['property'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MyShapeToJson(MyShape instance) => <String, dynamic>{
      'shape': instance.shape,
      'property': instance.property,
    };

Property _$PropertyFromJson(Map<String, dynamic> json) => Property(
      (json['width'] as num).toDouble(),
      (json['height'] as num).toDouble(),
    );

Map<String, dynamic> _$PropertyToJson(Property instance) => <String, dynamic>{
      'width': instance.width,
      'height': instance.height,
    };
