// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i2;
import 'package:mobile_app/screens/app/view/edil_app.dart' as _i1;

abstract class $AppRouter extends _i2.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    EdilAppRoute.name: (routeData) {
      return _i2.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.EdilAppScreen(),
      );
    }
  };
}

/// generated route for
/// [_i1.EdilAppScreen]
class EdilAppRoute extends _i2.PageRouteInfo<void> {
  const EdilAppRoute({List<_i2.PageRouteInfo>? children})
      : super(
          EdilAppRoute.name,
          initialChildren: children,
        );

  static const String name = 'EdilAppRoute';

  static const _i2.PageInfo<void> page = _i2.PageInfo<void>(name);
}
