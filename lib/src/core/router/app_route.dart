import 'package:auto_route/auto_route.dart';
import 'package:mobile_app/src/core/router/app_route.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: LoginRoute.page, path: "/login", initial: true),
        AutoRoute(page: HomeRoute.page, path: '/home'),
      ];
}
