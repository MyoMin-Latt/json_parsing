import 'package:freezed_annotation/freezed_annotation.dart';

part 'instructor.freezed.dart';

@freezed
class Instructor with _$Instructor {
  const factory Instructor({
    required String instructorId,
    required String instructorName,
    String? position,
    String? jobPosition,
    String? facebookLink,
    String? youtubeLink,
    String? twitterLink,
    String? linkedInLink,
    String? profilePhoto,
    String? instructorDetails,
    String? education,
    String? experience,
    String? charities,
  }) = _Instructor;
}
