class SoapApiException implements Exception {
  final int? code;
  final String? message;

  SoapApiException({this.code, this.message});
}
