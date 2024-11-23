import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_config.freezed.dart';
part 'app_config.g.dart';

@Freezed()
class AppConfig with _$AppConfig {
  const factory AppConfig({
    required String baseUrl,
    @Default(Duration(seconds: 10)) Duration connectionTimeout,
    @Default(Duration(seconds: 15)) Duration receiveTimeout,
    @Default(Duration(seconds: 10)) Duration sendTimeout,
  }) = _AppConfig;

  factory AppConfig.fromJson(Map<String, dynamic> json) =>
      _$AppConfigFromJson(json);
}
