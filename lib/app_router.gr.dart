// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:restaurant_app/main_screen.dart' as _i3;
import 'package:restaurant_app/pages/appetizers_page.dart' as _i1;
import 'package:restaurant_app/pages/entrees_page.dart' as _i2;
import 'package:restaurant_app/pages/salad_page.dart' as _i4;

abstract class $AppRouter extends _i5.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    AppetizersRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AppetizersPage(),
      );
    },
    EntreesRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.EntreesPage(),
      );
    },
    MainRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.MainScreen(),
      );
    },
    SaladRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.SaladPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.AppetizersPage]
class AppetizersRoute extends _i5.PageRouteInfo<void> {
  const AppetizersRoute({List<_i5.PageRouteInfo>? children})
      : super(
          AppetizersRoute.name,
          initialChildren: children,
        );

  static const String name = 'AppetizersRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i2.EntreesPage]
class EntreesRoute extends _i5.PageRouteInfo<void> {
  const EntreesRoute({List<_i5.PageRouteInfo>? children})
      : super(
          EntreesRoute.name,
          initialChildren: children,
        );

  static const String name = 'EntreesRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i3.MainScreen]
class MainRoute extends _i5.PageRouteInfo<void> {
  const MainRoute({List<_i5.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i4.SaladPage]
class SaladRoute extends _i5.PageRouteInfo<void> {
  const SaladRoute({List<_i5.PageRouteInfo>? children})
      : super(
          SaladRoute.name,
          initialChildren: children,
        );

  static const String name = 'SaladRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}
