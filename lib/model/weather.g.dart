// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Weather _$WeatherFromJson(Map<String, dynamic> json) => Weather(
      Coord.fromJson(json['coord'] as Map<String, dynamic>),
      (json['weather'] as List<dynamic>)
          .map((e) => WeatherDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['base'] as String,
    );

Map<String, dynamic> _$WeatherToJson(Weather instance) => <String, dynamic>{
      'coord': instance.coord,
      'weather': instance.weatherDetail,
      'base': instance.base,
    };

Coord _$CoordFromJson(Map<String, dynamic> json) => Coord(
      (json['lon'] as num).toDouble(),
      (json['lat'] as num).toDouble(),
    );

Map<String, dynamic> _$CoordToJson(Coord instance) => <String, dynamic>{
      'lon': instance.longitude,
      'lat': instance.latitude,
    };

WeatherDetail _$WeatherDetailFromJson(Map<String, dynamic> json) =>
    WeatherDetail(
      json['id'] as int,
      json['main'] as String,
      json['description'] as String,
      json['icon'] as String,
    );

Map<String, dynamic> _$WeatherDetailToJson(WeatherDetail instance) =>
    <String, dynamic>{
      'id': instance.id,
      'main': instance.main,
      'description': instance.description,
      'icon': instance.icon,
    };
