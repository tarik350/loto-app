import 'package:auto_route/auto_route.dart';
import 'package:mobile_app/src/core/router/app_route.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  // final _authGuard = AuthGuard();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, path: '/home'),
        AutoRoute(page: AppRoute.page, path: '/app', initial: true),
        AutoRoute(page: GameRoute.page, path: '/game'),
      ];
}
