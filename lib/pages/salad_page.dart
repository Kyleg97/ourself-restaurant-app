import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_app/components/base_menu_screen.dart';
import 'package:restaurant_app/data/menu_data.dart';
import 'package:restaurant_app/models/menu_item.dart';

@RoutePage()
class SaladPage extends StatelessWidget {
  const SaladPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseMenuScreen(
      title: "Salads",
      menuItems: [
        [MenuItemHeader(name: "Salads")],
        salads,
        [MenuItemHeader(name: "Soup and Salad Combos")],
        soupAndSaladCombos,
      ].expand((x) => x).toList(),
    );
  }
}
