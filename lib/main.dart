import 'package:flutter/material.dart';
import 'package:restaurant_app/app_router.dart';

void main() {
  runApp(const RestaurantApp());
}

final appRouter = AppRouter();

class RestaurantApp extends StatelessWidget {
  const RestaurantApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Restaurant App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      routerConfig: appRouter.config(),
    );
  }
}
