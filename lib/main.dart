// Error => import 'package:json_serializable/builder.dart';

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:json_parsing01/model/product.dart';
import 'package:json_parsing01/model/shape_two.dart';
import 'package:json_parsing01/model/weather.dart';

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
            var responseBody = await rootBundle.loadString('assets/data/weather.json');
            print(responseBody); // json
            Map<String, dynamic> map = jsonDecode(responseBody); // json decode to map
            print(map); // map
            Weather weather = Weather.fromJson(jsonDecode(responseBody));
            print(weather);
            print(weather.coord);
            print(weather.coord.longitude);
            print(weather.weatherDetail);
            print(weather.weatherDetail[0].description);
            print(weather.toJson());
            print(weather.coord.toJson());
            print(weather.weatherDetail[0].toJson());

            

          },
          child: Icon(Icons.save),),
      ),
    );
  }
}