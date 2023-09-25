import 'package:auto_route/auto_route.dart';
import 'package:restaurant_app/app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: MainRoute.page,
          children: [
            AutoRoute(page: AppetizersRoute.page),
            AutoRoute(page: EntreesRoute.page),
            AutoRoute(page: SaladRoute.page),
          ],
          initial: true,
        ),
      ];
}
