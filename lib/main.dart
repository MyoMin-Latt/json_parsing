// Error => import 'package:json_serializable/builder.dart';

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:json_parsing01/model/product.dart';
import 'package:json_parsing01/model/shape_two.dart';

import 'model/product_two.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Json Parsing'),
        ),
        body: Text(''),
        floatingActionButton: FloatingActionButton(
          onPressed: ()async{
            var responseBody = await rootBundle.loadString('assets/data/data_four.json');
            print(responseBody); // json
            Map<String, dynamic> map = jsonDecode(responseBody); // json decode to map
            print(map); // map
            MyProduct product = MyProduct.fromJson(map);
            print(product);
            print(product.name);
            print(product.images);
            print(product.images[0].id);
            print(product.toJson());

          },
          child: Icon(Icons.save),),
      ),
    );
  }
}