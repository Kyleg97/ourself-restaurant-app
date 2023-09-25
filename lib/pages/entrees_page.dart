import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:restaurant_app/components/base_menu_screen.dart';
import 'package:restaurant_app/data/menu_data.dart';
import 'package:restaurant_app/models/menu_item.dart';

@RoutePage()
class EntreesPage extends StatelessWidget {
  const EntreesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseMenuScreen(
      title: "Entrees",
      menuItems: [
        [MenuItemHeader(name: "Entrees")],
        entrees,
        [MenuItemHeader(name: "Sandwiches")],
        [MenuItemSubHeader(name: "Cold Sandwiches")],
        coldSandwiches,
        [MenuItemSubHeader(name: "Hot Sandwiches")],
        hotSandwiches,
        [MenuItemHeader(name: "Quiches")],
        quiches,
        [MenuItemHeader(name: "Mexican Quisine")],
        [MenuItemSubHeader(name: "Fajitas")],
        fajitas,
        [MenuItemSubHeader(name: "Tacos")],
        tacos,
        [MenuItemSubHeader(name: "Enchiladas")],
        enchiladas,
      ].expand((x) => x).toList(),
    );
  }
}
