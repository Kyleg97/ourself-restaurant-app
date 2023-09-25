import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_app/app_router.gr.dart';

@RoutePage()
class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        AppetizersRoute(),
        EntreesRoute(),
        SaladRoute(),
      ],
      transitionBuilder: (context, child, animation) {
        return FadeTransition(
          opacity: animation,
          child: child,
        );
      },
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            selectedItemColor: Colors.green.shade700,
            currentIndex: tabsRouter.activeIndex,
            onTap: (index) {
              tabsRouter.setActiveIndex(index);
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.restaurant_menu),
                label: "Appetizers",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.restaurant),
                label: "Entrees",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.soup_kitchen),
                label: "Soup & Salad",
              ),
            ],
          ),
          body: child,
        );
      },
    );
  }
}
