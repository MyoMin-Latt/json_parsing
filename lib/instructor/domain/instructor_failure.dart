import 'package:freezed_annotation/freezed_annotation.dart';

part 'instructor_failure.freezed.dart';

@freezed
class InstructorFailure with _$InstructorFailure {
  // const InstructorFailure._();
  const factory InstructorFailure.api(
    int? errorCode,
    String? message,
  ) = _InstructorFailure;
}
