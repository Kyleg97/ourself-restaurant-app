import 'package:flutter/material.dart';
import 'package:restaurant_app/components/base_screen.dart';
import 'package:restaurant_app/models/menu_item.dart';

class BaseMenuScreen extends StatelessWidget {
  const BaseMenuScreen({
    super.key,
    required this.title,
    required this.menuItems,
  });

  final String title;
  final List<MenuItem> menuItems;

  @override
  Widget build(BuildContext context) {
    return BaseScreen(
      backgroundColor: Colors.transparent,
      child: ListView.separated(
        padding: const EdgeInsets.all(20),
        // physics: const NeverScrollableScrollPhysics(),
        itemCount: menuItems.length,
        itemBuilder: (context, index) {
          TextStyle style;
          MainAxisAlignment mainAxisAlignment = MainAxisAlignment.spaceBetween;
          TextAlign textAlign = TextAlign.start;
          if (menuItems[index] is MenuItemHeader) {
            style = const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            );
            mainAxisAlignment = MainAxisAlignment.center;
            textAlign = TextAlign.center;
          } else if (menuItems[index] is MenuItemSubHeader) {
            style = const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            );
          } else {
            style = const TextStyle(fontSize: 16);
          }
          return Row(
            mainAxisAlignment: mainAxisAlignment,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.75,
                child: Text(
                  menuItems[index].name,
                  style: style,
                  textAlign: textAlign,
                ),
              ),
              menuItems[index].cost == null
                  ? const SizedBox.shrink()
                  : Text(
                      menuItems[index].cost.toString(),
                      style: const TextStyle(fontSize: 16),
                    ),
            ],
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(height: 20);
        },
      ),
    );
  }
}
