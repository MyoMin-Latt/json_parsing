import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final dioProvider = Provider(
  (ref) => Dio()
    ..options = BaseOptions(headers: {
      'Content-Type': 'text/xml; charset=utf-8',
    }),
);
