// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:ui' as _i6;

import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;
import 'package:mobile_app/screens/app/view/edil_app.dart' as _i1;
import 'package:mobile_app/screens/game_detail/game_detail_screen.dart' as _i2;
import 'package:mobile_app/screens/home/home_screen.dart' as _i3;

abstract class $AppRouter extends _i4.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    EdilAppRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.EdilAppScreen(),
      );
    },
    GameDetailRoute.name: (routeData) {
      final args = routeData.argsAs<GameDetailRouteArgs>();
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.GameDetailScreen(
          key: args.key,
          color: args.color,
        ),
      );
    },
    HomeRoute.name: (routeData) {
      final args =
          routeData.argsAs<HomeRouteArgs>(orElse: () => const HomeRouteArgs());
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.HomeScreen(key: args.key),
      );
    },
  };
}

/// generated route for
/// [_i1.EdilAppScreen]
class EdilAppRoute extends _i4.PageRouteInfo<void> {
  const EdilAppRoute({List<_i4.PageRouteInfo>? children})
      : super(
          EdilAppRoute.name,
          initialChildren: children,
        );

  static const String name = 'EdilAppRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i2.GameDetailScreen]
class GameDetailRoute extends _i4.PageRouteInfo<GameDetailRouteArgs> {
  GameDetailRoute({
    _i5.Key? key,
    required _i6.Color color,
    List<_i4.PageRouteInfo>? children,
  }) : super(
          GameDetailRoute.name,
          args: GameDetailRouteArgs(
            key: key,
            color: color,
          ),
          initialChildren: children,
        );

  static const String name = 'GameDetailRoute';

  static const _i4.PageInfo<GameDetailRouteArgs> page =
      _i4.PageInfo<GameDetailRouteArgs>(name);
}

class GameDetailRouteArgs {
  const GameDetailRouteArgs({
    this.key,
    required this.color,
  });

  final _i5.Key? key;

  final _i6.Color color;

  @override
  String toString() {
    return 'GameDetailRouteArgs{key: $key, color: $color}';
  }
}

/// generated route for
/// [_i3.HomeScreen]
class HomeRoute extends _i4.PageRouteInfo<HomeRouteArgs> {
  HomeRoute({
    _i5.Key? key,
    List<_i4.PageRouteInfo>? children,
  }) : super(
          HomeRoute.name,
          args: HomeRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i4.PageInfo<HomeRouteArgs> page =
      _i4.PageInfo<HomeRouteArgs>(name);
}

class HomeRouteArgs {
  const HomeRouteArgs({this.key});

  final _i5.Key? key;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key}';
  }
}
