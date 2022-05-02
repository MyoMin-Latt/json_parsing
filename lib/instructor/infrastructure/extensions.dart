import '../domain/instructor.dart';
import 'instructor_dto.dart';

extension DtoListToDomainList on List<InstructorDto> {
  List<Instructor> toDomain() {
    return map((e) => e.toDomain()).toList();
  }
}
