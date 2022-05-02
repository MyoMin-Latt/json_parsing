import 'package:dartz/dartz.dart';

import '../../core/infrastructure/network_exceptions.dart';
import '../domain/instructor.dart';
import '../domain/instructor_failure.dart';
import 'extensions.dart';
import 'instructor_remote_service.dart';

class InstructorRepository {
  final InstructorRemoteService _remoteService;

  InstructorRepository(this._remoteService);

  Future<Either<InstructorFailure, List<Instructor>>>
      fetchAllInstructors() async {
    try {
      final remoteItems = await _remoteService.getAllInstructors();

      return right(
        await remoteItems.when(
          noConnection: () => [],
          withData: (instructors) => instructors.toDomain(),
        ),
      );
    } on SoapApiException catch (e) {
      return left(InstructorFailure.api(e.code, e.message));
    }
  }

  Future<Either<InstructorFailure, Instructor?>> fetchInstructorById(
      String instructorId) async {
    try {
      final remoteItem = await _remoteService.getInstructorById(instructorId);

      return right(
        await remoteItem.when(
          noConnection: () => null,
          withData: (instructor) => instructor?.toDomain(),
        ),
      );
    } on SoapApiException catch (e) {
      return left(
        InstructorFailure.api(e.code, e.message),
      );
    }
  }
}
