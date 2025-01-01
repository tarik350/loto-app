// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;
import 'package:mobile_app/app.dart' as _i1;
import 'package:mobile_app/src/features/auth/auth_page_wrapper/presentation/help_center/presentation/page/help_center_page.dart'
    as _i5;
import 'package:mobile_app/src/features/auth/auth_page_wrapper/presentation/pages/auth_page_wrapper.dart'
    as _i2;
import 'package:mobile_app/src/features/edit_profile/presentation/pages/edit_profile_page.dart'
    as _i3;
import 'package:mobile_app/src/features/game/presentation/page/game_page.dart'
    as _i4;
import 'package:mobile_app/src/features/home/domain/models/game_category/game_category.dart'
    as _i11;
import 'package:mobile_app/src/features/home/presentation/pages/home_page.dart'
    as _i6;
import 'package:mobile_app/src/features/my_tickets/presentation/page/my_ticket_page.dart'
    as _i7;
import 'package:mobile_app/src/features/my_wallet/presentation/page/my_wallet_page.dart'
    as _i8;

/// generated route for
/// [_i1.AppScreen]
class AppRoute extends _i9.PageRouteInfo<AppRouteArgs> {
  AppRoute({
    _i10.Key? key,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          AppRoute.name,
          args: AppRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'AppRoute';

  static _i9.PageInfo page = _i9.PageInfo(
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

  final _i10.Key? key;

  @override
  String toString() {
    return 'AppRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.AuthPageWrapper]
class AuthRouteWrapper extends _i9.PageRouteInfo<void> {
  const AuthRouteWrapper({List<_i9.PageRouteInfo>? children})
      : super(
          AuthRouteWrapper.name,
          initialChildren: children,
        );

  static const String name = 'AuthRouteWrapper';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i2.AuthPageWrapper();
    },
  );
}

/// generated route for
/// [_i3.EditProfilePage]
class EditProfileRoute extends _i9.PageRouteInfo<void> {
  const EditProfileRoute({List<_i9.PageRouteInfo>? children})
      : super(
          EditProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'EditProfileRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i3.EditProfilePage();
    },
  );
}

/// generated route for
/// [_i4.GameScreen]
class GameRoute extends _i9.PageRouteInfo<GameRouteArgs> {
  GameRoute({
    _i10.Key? key,
    required _i11.GameCategory category,
    required String gameName,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          GameRoute.name,
          args: GameRouteArgs(
            key: key,
            category: category,
            gameName: gameName,
          ),
          initialChildren: children,
        );

  static const String name = 'GameRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<GameRouteArgs>();
      return _i4.GameScreen(
        key: args.key,
        category: args.category,
        gameName: args.gameName,
      );
    },
  );
}

class GameRouteArgs {
  const GameRouteArgs({
    this.key,
    required this.category,
    required this.gameName,
  });

  final _i10.Key? key;

  final _i11.GameCategory category;

  final String gameName;

  @override
  String toString() {
    return 'GameRouteArgs{key: $key, category: $category, gameName: $gameName}';
  }
}

/// generated route for
/// [_i5.HelpCenterPage]
class HelpCenterRoute extends _i9.PageRouteInfo<void> {
  const HelpCenterRoute({List<_i9.PageRouteInfo>? children})
      : super(
          HelpCenterRoute.name,
          initialChildren: children,
        );

  static const String name = 'HelpCenterRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i5.HelpCenterPage();
    },
  );
}

/// generated route for
/// [_i6.HomePage]
class HomeRoute extends _i9.PageRouteInfo<void> {
  const HomeRoute({List<_i9.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i6.HomePage();
    },
  );
}

/// generated route for
/// [_i7.MyTicketPage]
class MyTicketRoute extends _i9.PageRouteInfo<void> {
  const MyTicketRoute({List<_i9.PageRouteInfo>? children})
      : super(
          MyTicketRoute.name,
          initialChildren: children,
        );

  static const String name = 'MyTicketRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i7.MyTicketPage();
    },
  );
}

/// generated route for
/// [_i8.MyWalletPage]
class MyWalletRoute extends _i9.PageRouteInfo<void> {
  const MyWalletRoute({List<_i9.PageRouteInfo>? children})
      : super(
          MyWalletRoute.name,
          initialChildren: children,
        );

  static const String name = 'MyWalletRoute';

  static _i9.PageInfo page = _i9.PageInfo(
    name,
    builder: (data) {
      return const _i8.MyWalletPage();
    },
  );
}
