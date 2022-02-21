
import 'dart:convert';

class Shape{
  String shape;
  Property property;
  Shape(this.shape, this.property);
  factory Shape.fromJson(Map<String, dynamic> json){
    return Shape(json["shape"], Property.fromJson(json["property"]));
  }
  String toJson() => jsonEncode(_shapeToJson(this));
  Map<String, dynamic> _shapeToJson(Shape shape){
    return <String, dynamic>{
      "shape" : shape.shape,
      "property" : shape.property.toJson()
    };
  }
}

class Property{
  double width;
  double height;
  Property(this.width, this.height);
  factory Property.fromJson(Map<String, dynamic> json){
    return Property(json["width"], json["height"]);
  }
  Map<String, dynamic> toJson() => _propertyToJson(this);
  Map<String, dynamic> _propertyToJson(Property property){
    return <String, dynamic>{
      "width" : property.width,
      "height" : property.height
    };
  }
}