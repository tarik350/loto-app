import 'package:dio/dio.dart';
import 'package:mobile_app/src/core/utils/injections.dart';
import 'package:mobile_app/src/shared/models/app_config/app_config.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioNetwork {
  static late Dio _dio;

  static Dio get dio => _dio;
  static void initDio() {
    _dio = Dio(getBaseOptionsForDio());
    _dio.interceptors.add(RefereshTokenInterceptor());
    _dio.interceptors.add(PrettyDioLogger(
        requestBody: true, requestHeader: true, responseHeader: true));
  }

  static Map<String, String> get headers => {
        'Content-Type': 'application/json',
        // 'Accept': 'application/json',
      };

  static BaseOptions getBaseOptionsForDio() {
    final config = sl<AppConfig>();
    return BaseOptions(
        baseUrl: config.baseUrl,
        sendTimeout: config.sendTimeout,
        receiveTimeout: config.receiveTimeout,
        connectTimeout: config.connectionTimeout,
        responseType: ResponseType.json,
        headers: headers,
        validateStatus: (status) =>
            status != null && status >= 200 && status < 300);
  }
}

class RefereshTokenInterceptor extends InterceptorsWrapper {}
