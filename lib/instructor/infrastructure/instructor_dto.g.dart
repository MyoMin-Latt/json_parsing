// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'instructor_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InstructorDto _$$_InstructorDtoFromJson(Map<String, dynamic> json) =>
    _$_InstructorDto(
      instructorId: _stringFromJson(json['instructorID']),
      instructorName: _stringFromJson(json['instructorName']),
      position: _stringFromJson(json['instructorPosition']),
      jobPosition: _stringFromJson(json['instructorJobPosition']),
      facebookLink: _stringFromJson(json['facebookLink']),
      youtubeLink: _stringFromJson(json['youtubeLink']),
      twitterLink: _stringFromJson(json['twitterLink']),
      linkedInLink: _stringFromJson(json['linkedInLink']),
      profilePhoto: _stringFromJson(json['profilePhoto']),
      instructorDetails: _stringFromJson(json['instructorDetails']),
      education: _stringFromJson(json['education']),
      experience: _stringFromJson(json['experience']),
      charities: _stringFromJson(json['charities']),
    );

Map<String, dynamic> _$$_InstructorDtoToJson(_$_InstructorDto instance) =>
    <String, dynamic>{
      'instructorID': instance.instructorId,
      'instructorName': instance.instructorName,
      'instructorPosition': instance.position,
      'instructorJobPosition': instance.jobPosition,
      'facebookLink': instance.facebookLink,
      'youtubeLink': instance.youtubeLink,
      'twitterLink': instance.twitterLink,
      'linkedInLink': instance.linkedInLink,
      'profilePhoto': instance.profilePhoto,
      'instructorDetails': instance.instructorDetails,
      'education': instance.education,
      'experience': instance.experience,
      'charities': instance.charities,
    };
