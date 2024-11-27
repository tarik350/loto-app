import 'package:auto_route/auto_route.dart';
import 'package:mobile_app/src/core/utils/injections.dart';
import 'package:mobile_app/src/features/auth/data/data_source%20/local/abstract_auth_local_api.dart';
import 'package:mobile_app/src/core/router/app_route.gr.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    final isAuthenticated = sl<AbstractAuthLocalApi>().isUserAuthenticated();

    if (isAuthenticated != null && isAuthenticated) {
      resolver.next(true);
    } else {
      router.push(LoginRoute());
    }
  }
}
