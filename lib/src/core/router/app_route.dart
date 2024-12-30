import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:mobile_app/src/core/router/app_route.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  // final _authGuard = AuthGuard();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, path: '/home'),
        AutoRoute(page: AppRoute.page, path: '/app', initial: true),
        AutoRoute(page: GameRoute.page, path: '/game'),
        CustomRoute(
          page: AuthRouteWrapper.page,
          path: '/login',
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const begin = Offset(0.0, 1.0);
            const end = Offset.zero;
            const curve = Curves.easeInOut;

            final tween =
                Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
            final offsetAnimation = animation.drive(tween);

            return SlideTransition(
              position: offsetAnimation,
              child: child,
            );
          },
          durationInMilliseconds: 400,
        ),
        AutoRoute(
          page: MyWalletRoute.page,
          path: '/wallet',
        ),
        AutoRoute(
          page: MyTicketRoute.page,
          path: '/ticket',
        ),
        AutoRoute(
          page: EditProfileRoute.page,
          path: '/edit-profile',
        ),
        AutoRoute(
          page: HelpCenterRoute.page,
          path: '/help',
        )
      ];
}
