
import 'dart:convert';

class Product{
  int id;
  String name;
  List<Image> images;
  Product(this.id, this.name, this.images);
  factory Product.fromJson(Map<String, dynamic> json){
    var list = json["images"] as List;
    List<Image> imageList = list.map((e) => Image.formJson(e)).toList();
    return Product(json["id"], json["name"], imageList);
  }

  String toJson() => jsonEncode(_productToJson(this));
  Map<String, dynamic> _productToJson(Product product){
    return <String, dynamic>{
      "id": product.id,
      "name": product.name,
      "image": product.images
    };
  }
}

class Image{
  int id;
  String name;
  Image(this.id, this.name);
  factory Image.formJson(Map<String, dynamic> json){
    return Image(json["id"], json["name"]);
  }
  Map<String, dynamic> toJson() => _imageToJson(this);
  Map<String, dynamic> _imageToJson(Image image){
    return <String, dynamic>{
      "id": image.id,
      "name": image.name
    };
  }
}