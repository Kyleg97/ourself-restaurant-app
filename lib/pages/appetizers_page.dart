import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_app/components/base_menu_screen.dart';
import 'package:restaurant_app/data/menu_data.dart';
import 'package:restaurant_app/models/menu_item.dart';

@RoutePage()
class AppetizersPage extends StatelessWidget {
  const AppetizersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseMenuScreen(
      title: "Appetizers",
      menuItems: [
        [MenuItemHeader(name: "Appetizers")],
        appetizers,
      ].expand((x) => x).toList(),
    );
  }
}
