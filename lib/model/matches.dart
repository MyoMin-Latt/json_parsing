import 'package:json_annotation/json_annotation.dart';
  part 'matches.g.dart';
@JsonSerializable()
class Matches{
  bool con;
  String msg;
  Result result;
  Matches(this.con, this.msg, this.result);
  factory Matches.fromJson(Map<String, dynamic> json) => _$MatchesFromJson(json);
  Map<String, dynamic> toJson() => _$MatchesToJson(this);
}
@JsonSerializable()
class Result{
  @JsonKey(name: "_id")
  String id;
  String matchId;
  Result(this.id, this.matchId);
  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
  Map<String, dynamic> toJson() => _$ResultToJson(this);
}




