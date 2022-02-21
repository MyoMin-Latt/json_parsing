// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_two.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MyProduct _$MyProductFromJson(Map<String, dynamic> json) => MyProduct(
      json['id'] as int,
      json['name'] as String,
      (json['images'] as List<dynamic>)
          .map((e) => MyImage.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MyProductToJson(MyProduct instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'images': instance.images,
    };

MyImage _$MyImageFromJson(Map<String, dynamic> json) => MyImage(
      json['id'] as int,
      json['name'] as String,
    );

Map<String, dynamic> _$MyImageToJson(MyImage instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
