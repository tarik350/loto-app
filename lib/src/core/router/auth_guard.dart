import 'package:auto_route/auto_route.dart';
import 'package:mobile_app/src/core/utils/injections.dart';
import 'package:mobile_app/src/features/auth/login/data/data_source/local/abstract_local_login_api.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    final isAuthenticated = sl<AbstractLocalLoginApi>().isUserAuthenticated();

    if (isAuthenticated) {
      resolver.next(true);
    } else {
      resolver.next(false);
    }
  }
}
