import 'package:json_annotation/json_annotation.dart';
part 'shape_two.g.dart';

@JsonSerializable()
class MyShape{
  String shape;
  Property property;
  MyShape(this.shape, this.property);
  factory MyShape.fromJson(Map<String, dynamic> json) => _$MyShapeFromJson(json);
  Map<String, dynamic> toJson() => _$MyShapeToJson(this);
}
@JsonSerializable()
class Property{
  double width;
  double height;
  Property(this.width, this.height);
  factory Property.fromJson(Map<String, dynamic> json) => _$PropertyFromJson(json);
  Map<String, dynamic> toJson() => _$PropertyToJson(this);
  
}