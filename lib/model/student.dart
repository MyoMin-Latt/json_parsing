
import 'dart:convert';

class Student{
  int id;
  String name;
  String address;
  Student(this.id, this.name, this.address);
  factory Student.fromJson(Map<String, dynamic> parsedJson){
    return Student(parsedJson['id'], parsedJson['name'], parsedJson['address']);
  }

  String toJson() => jsonEncode(_StudentToJson(this));
  Map<String, dynamic> _StudentToJson(Student student){
    return <String, dynamic>{
      "id" : student.id,
      "name" : student.name,
      "address" : student.address
    };
  }
}