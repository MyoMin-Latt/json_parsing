// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'matches.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Matches _$MatchesFromJson(Map<String, dynamic> json) => Matches(
      json['con'] as bool,
      json['msg'] as String,
      Result.fromJson(json['result'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MatchesToJson(Matches instance) => <String, dynamic>{
      'con': instance.con,
      'msg': instance.msg,
      'result': instance.result,
    };

Result _$ResultFromJson(Map<String, dynamic> json) => Result(
      json['_id'] as String,
      json['matchId'] as String,
    );

Map<String, dynamic> _$ResultToJson(Result instance) => <String, dynamic>{
      '_id': instance.id,
      'matchId': instance.matchId,
    };
