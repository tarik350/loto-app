// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;
import 'package:mobile_app/app.dart' as _i1;
import 'package:mobile_app/src/features/game/presentation/page/game_page.dart'
    as _i2;
import 'package:mobile_app/src/features/home/presentation/pages/home_page.dart'
    as _i3;
import 'package:mobile_app/src/features/my_tickets/presentation/page/my_ticket_page.dart'
    as _i4;
import 'package:mobile_app/src/features/my_wallet/presentation/page/my_wallet_page.dart'
    as _i5;

/// generated route for
/// [_i1.AppScreen]
class AppRoute extends _i6.PageRouteInfo<AppRouteArgs> {
  AppRoute({
    _i7.Key? key,
    List<_i6.PageRouteInfo>? children,
  }) : super(
          AppRoute.name,
          args: AppRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'AppRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      final args =
          data.argsAs<AppRouteArgs>(orElse: () => const AppRouteArgs());
      return _i1.AppScreen(key: args.key);
    },
  );
}

class AppRouteArgs {
  const AppRouteArgs({this.key});

  final _i7.Key? key;

  @override
  String toString() {
    return 'AppRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.GameScreen]
class GameRoute extends _i6.PageRouteInfo<void> {
  const GameRoute({List<_i6.PageRouteInfo>? children})
      : super(
          GameRoute.name,
          initialChildren: children,
        );

  static const String name = 'GameRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i2.GameScreen();
    },
  );
}

/// generated route for
/// [_i3.HomePage]
class HomeRoute extends _i6.PageRouteInfo<void> {
  const HomeRoute({List<_i6.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i3.HomePage();
    },
  );
}

/// generated route for
/// [_i4.MyTicketPage]
class MyTicketRoute extends _i6.PageRouteInfo<void> {
  const MyTicketRoute({List<_i6.PageRouteInfo>? children})
      : super(
          MyTicketRoute.name,
          initialChildren: children,
        );

  static const String name = 'MyTicketRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i4.MyTicketPage();
    },
  );
}

/// generated route for
/// [_i5.MyWalletPage]
class MyWalletRoute extends _i6.PageRouteInfo<void> {
  const MyWalletRoute({List<_i6.PageRouteInfo>? children})
      : super(
          MyWalletRoute.name,
          initialChildren: children,
        );

  static const String name = 'MyWalletRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i5.MyWalletPage();
    },
  );
}
