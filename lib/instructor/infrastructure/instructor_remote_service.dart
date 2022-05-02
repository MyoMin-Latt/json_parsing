import 'dart:convert';

import 'package:dio/dio.dart';

import '../../core/infrastructure/dio_extensions.dart';
import '../../core/infrastructure/network_exceptions.dart';
import '../../core/infrastructure/remote_response.dart';
import '../../core/infrastructure/response_info_dto.dart';
import '../../core/shared/utils/constants.dart';
import '../../core/shared/utils/extensions.dart';
import 'instructor_dto.dart';

class InstructorRemoteService {
  final Dio _dio;

  InstructorRemoteService(this._dio);

  Future<RemoteResponse<List<InstructorDto>>> getAllInstructors() async {
    var schema = '''
<getTrainers xmlns="http://tempuri.org/">
  <sign>$signKey</sign>
</getTrainers>
''';

    try {
      final envelope = schema.toEnvelope();
      final response = await _dio.post(
        basedUrl,
        data: envelope,
      );

      if (response.statusCode == 200) {
        final body = (response.data as String).fromXmlToJson();
        final responseInfo =
            ResponseInfoDto.fromJson(jsonDecode(body['ResponseInfo']));

        if (responseInfo.code == '0') {
          final responseData =
              (jsonDecode(body['ResponseData'])) as List<dynamic>;

          final instructors =
              responseData.map((e) => InstructorDto.fromJson(e)).toList();

          return RemoteResponse.withData(instructors);
        } else {
          throw SoapApiException(
            code: responseInfo.code.toInt(),
            message: responseInfo.message,
          );
        }
      } else {
        throw SoapApiException(code: response.statusCode);
      }
    } on DioError catch (e) {
      if (e.isNoConnectionError) {
        return const RemoteResponse.noConnection();
      } else if (e.error != null) {
        throw SoapApiException(code: e.response?.statusCode);
      } else {
        rethrow;
      }
    }
  }

  Future<RemoteResponse<InstructorDto?>> getInstructorById(
      String instructorId) async {
    var schema = '''
<getInstructor xmlns="http://tempuri.org/">
  <instructorID>$instructorId</instructorID>
  <sign>$signKey</sign>
</getInstructor>
''';

    try {
      final envelope = schema.toEnvelope();
      final response = await _dio.post(
        basedUrl,
        data: envelope,
      );

      if (response.statusCode == 200) {
        final body = (response.data as String).fromXmlToJson();
        final responseInfo =
            ResponseInfoDto.fromJson(jsonDecode(body['ResponseInfo']));

        if (responseInfo.code == '0') {
          final responseData = (jsonDecode(body['ResponseData'])) as dynamic;

          final instructor = InstructorDto.fromJson(responseData);

          return RemoteResponse.withData(instructor);
        } else {
          throw SoapApiException(
            code: responseInfo.code.toInt(),
            message: responseInfo.message,
          );
        }
      } else {
        throw SoapApiException(code: response.statusCode);
      }
    } on DioError catch (e) {
      if (e.isNoConnectionError) {
        return const RemoteResponse.noConnection();
      } else if (e.error != null) {
        throw SoapApiException(code: e.response?.statusCode);
      } else {
        rethrow;
      }
    }
  }
}
