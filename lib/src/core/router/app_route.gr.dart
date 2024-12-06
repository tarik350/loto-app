// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;
import 'package:mobile_app/app.dart' as _i1;
import 'package:mobile_app/src/features/game/presentation/page/game_page.dart'
    as _i2;
import 'package:mobile_app/src/features/home/presentation/pages/home_page.dart'
    as _i3;

/// generated route for
/// [_i1.AppScreen]
class AppRoute extends _i4.PageRouteInfo<AppRouteArgs> {
  AppRoute({
    _i5.Key? key,
    List<_i4.PageRouteInfo>? children,
  }) : super(
          AppRoute.name,
          args: AppRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'AppRoute';

  static _i4.PageInfo page = _i4.PageInfo(
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

  final _i5.Key? key;

  @override
  String toString() {
    return 'AppRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.GameScreen]
class GameRoute extends _i4.PageRouteInfo<void> {
  const GameRoute({List<_i4.PageRouteInfo>? children})
      : super(
          GameRoute.name,
          initialChildren: children,
        );

  static const String name = 'GameRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i2.GameScreen();
    },
  );
}

/// generated route for
/// [_i3.HomeScreen]
class HomeRoute extends _i4.PageRouteInfo<void> {
  const HomeRoute({List<_i4.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i3.HomeScreen();
    },
  );
}
