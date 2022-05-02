import 'package:freezed_annotation/freezed_annotation.dart';

import '../domain/instructor.dart';

part 'instructor_dto.freezed.dart';
part 'instructor_dto.g.dart';

String _stringFromJson(Object? json) {
  return (json as String?) ?? '';
}

@freezed
class InstructorDto with _$InstructorDto {
  const InstructorDto._();
  const factory InstructorDto({
    @JsonKey(name: 'instructorID', fromJson: _stringFromJson)
        required String instructorId,
    @JsonKey(name: 'instructorName', fromJson: _stringFromJson)
        required String instructorName,
    @JsonKey(name: 'instructorPosition', fromJson: _stringFromJson)
        required String position,
    @JsonKey(name: 'instructorJobPosition', fromJson: _stringFromJson)
        required String jobPosition,
    @JsonKey(name: 'facebookLink', fromJson: _stringFromJson)
        required String facebookLink,
    @JsonKey(name: 'youtubeLink', fromJson: _stringFromJson)
        required String youtubeLink,
    @JsonKey(name: 'twitterLink', fromJson: _stringFromJson)
        required String twitterLink,
    @JsonKey(name: 'linkedInLink', fromJson: _stringFromJson)
        required String linkedInLink,
    @JsonKey(name: 'profilePhoto', fromJson: _stringFromJson)
        required String profilePhoto,
    @JsonKey(name: 'instructorDetails', fromJson: _stringFromJson)
        required String instructorDetails,
    @JsonKey(name: 'education', fromJson: _stringFromJson)
        required String education,
    @JsonKey(name: 'experience', fromJson: _stringFromJson)
        required String experience,
    @JsonKey(name: 'charities', fromJson: _stringFromJson)
        required String charities,
  }) = _InstructorDto;

  factory InstructorDto.fromJson(Map<String, dynamic> json) =>
      _$InstructorDtoFromJson(json);

  factory InstructorDto.fromDomain(Instructor _) => InstructorDto(
        instructorId: _.instructorId,
        instructorName: _.instructorName,
        position: _.position ?? '',
        jobPosition: _.jobPosition ?? '',
        facebookLink: _.facebookLink ?? '',
        youtubeLink: _.youtubeLink ?? '',
        twitterLink: _.twitterLink ?? '',
        linkedInLink: _.linkedInLink ?? '',
        profilePhoto: _.profilePhoto ?? '',
        instructorDetails: _.instructorDetails ?? '',
        education: _.education ?? '',
        experience: _.experience ?? '',
        charities: _.charities ?? '',
      );

  Instructor toDomain() => Instructor(
        instructorId: instructorId,
        instructorName: instructorName,
        position: position,
        jobPosition: jobPosition,
        facebookLink: facebookLink,
        youtubeLink: youtubeLink,
        twitterLink: twitterLink,
        linkedInLink: linkedInLink,
        profilePhoto: profilePhoto,
        instructorDetails: instructorDetails,
        education: education,
        experience: experience,
        charities: charities,
      );
}
