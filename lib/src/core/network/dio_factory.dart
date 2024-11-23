import 'package:dio/dio.dart';

class DioFactory {
  final Dio dio;
  DioFactory(this.dio);
  Dio getInstance([bool requireAuth = false]) {
    if (requireAuth) {
      dio.options.headers['Authorization'] = 'Bearer YOUR_ACCESS_TOKEN';
    } else {
      dio.options.headers.remove('Authorization');
    }
    return dio;
  }
}
