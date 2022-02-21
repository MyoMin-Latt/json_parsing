
import 'dart:convert';

class City{
  String city;
  List<String> streets;
  City(this.city, this.streets);
  factory City.fromJson(Map<String, dynamic> decodedJson){
    List<String> streetsList = List.from(decodedJson['streets']);
    return City(decodedJson['city'], streetsList);
  }
  String toJson() => jsonEncode(_cityToJson(this));
  Map<String, dynamic> _cityToJson(City city){
    return <String, dynamic>{
      "city" : city.city,
      "streets" : city.streets
      // "streets" : city.streets..map((e) => e.toString())

    };
  }
}