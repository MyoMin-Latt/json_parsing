
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Json Parsing'),
        ),
        body: Text(''),
        floatingActionButton: FloatingActionButton(
          onPressed: ()async{
            var parsedJson = await rootBundle.loadString('assets/data/data_one.json');
            print(parsedJson); // Json output
            Map<String, dynamic> map = jsonDecode(parsedJson); 
            print(map); // Map Output
            MyStudent student = MyStudent.fromJson(map);
            print(student);
            print(student.id);
            print(student.toJson());
          },
          child: Icon(Icons.save),),
      ),
    );
  }
}