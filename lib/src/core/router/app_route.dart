import 'package:auto_route/auto_route.dart';
import 'package:mobile_app/src/core/router/app_route.gr.dart';
import 'package:mobile_app/src/core/router/auth_guard.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  final _authGuard = AuthGuard();

  @override
  List<AutoRoute> get routes => [
        // AutoRoute(page: LoginRoute.page, path: "/login"),

        AutoRoute(page: HomeRoute.page, path: '/home', initial: true),
      ];
}
