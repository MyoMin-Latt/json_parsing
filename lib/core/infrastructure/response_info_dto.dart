import 'package:freezed_annotation/freezed_annotation.dart';

part 'response_info_dto.freezed.dart';
part 'response_info_dto.g.dart';

@freezed
class ResponseInfoDto with _$ResponseInfoDto {
  const ResponseInfoDto._();
  const factory ResponseInfoDto({
    @JsonKey(name: 'Code') required String code,
    @JsonKey(name: 'Message') required String message,
  }) = _ResponseInfoDto;

  factory ResponseInfoDto.fromJson(Map<String, dynamic> json) =>
      _$ResponseInfoDtoFromJson(json);
}
