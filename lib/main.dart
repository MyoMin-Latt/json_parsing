// Error => import 'package:json_serializable/builder.dart';

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:json_parsing01/model/city.dart';
import 'package:json_parsing01/model/city_two.dart';
import 'package:json_parsing01/model/student.dart';
import 'package:json_parsing01/model/student_two.dart';

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
            var parsedJson = await rootBundle.loadString('assets/data/data_two.json');
            print(parsedJson); // Json output
            Map<String, dynamic> map = jsonDecode(parsedJson); 
            print(map); // Map Output
            MyCity myCity = MyCity.fromJson(map);
            print(myCity);
            print(myCity.city);
            print(myCity.streets);
            print(myCity.toJson());
          },
          child: Icon(Icons.save),),
      ),
    );
  }
}