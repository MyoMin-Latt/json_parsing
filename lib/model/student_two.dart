
import 'package:json_annotation/json_annotation.dart';
part 'student_two.g.dart';
@JsonSerializable()
class MyStudent{
  int id;
  String name;
  String address;
  MyStudent(this.id, this.name, this.address);
  factory MyStudent.fromJson(Map<String, dynamic> decodedJson) => _$MyStudentFromJson(decodedJson);
  Map<String, dynamic> toJson() => _$MyStudentToJson(this);
}