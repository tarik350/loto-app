import 'package:auto_route/auto_route.dart';
import 'package:mobile_app/config/routes/app_routes.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes =>
      [AutoRoute(page: EdilAppRoute.page, initial: true)];
}
