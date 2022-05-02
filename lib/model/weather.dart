import 'package:json_annotation/json_annotation.dart';
part 'weather.g.dart';

@JsonSerializable()
class Weather{
  Coord coord;
  @JsonKey(name: "weather")
  List<WeatherDetail> weatherDetail;
  String base;
  Weather(this.coord, this.weatherDetail, this.base);
  factory Weather.fromJson(Map<String, dynamic> json) => _$WeatherFromJson(json);
  Map<String, dynamic> toJson() => _$WeatherToJson(this);
}

@JsonSerializable()
class Coord{
  @JsonKey(name: "lon")
  double longitude;
  @JsonKey(name: "lat")
  double latitude;
  Coord(this.longitude, this.latitude);
  factory Coord.fromJson(Map<String, dynamic> json) => _$CoordFromJson(json);
  Map<String, dynamic> toJson() => _$CoordToJson(this);
}

@JsonSerializable()
class WeatherDetail{
  int id;
  String main;
  String description;
  String icon;
  WeatherDetail(this.id, this.main, this.description, this.icon);
  factory WeatherDetail.fromJson(Map<String, dynamic> json) => _$WeatherDetailFromJson(json);
  Map<String, dynamic> toJson() => _$WeatherDetailToJson(this);
}

