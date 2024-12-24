import 'package:dio/dio.dart';
import 'package:mobile_app/src/core/network/dio_network.dart';
import 'package:mobile_app/src/core/utils/injections.dart';
import 'package:mobile_app/src/features/auth/login/data/data_source/local/abstract_local_login_api.dart';

class DioFactory {
  final Dio dio;
  DioFactory(this.dio);
  Dio getInstance([bool requireAuth = false]) {
    if (requireAuth) {
      final privateDio = DioNetwork.dio;
      final token = sl<AbstractLocalLoginApi>().getToken();
      privateDio.options.headers['Authorization'] = "Bearer $token";
      return privateDio;
    } else {
      return dio;
    }
  }
}
