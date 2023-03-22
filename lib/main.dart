import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_training/features/home/view/home_page.dart';
import 'package:riverpod_training/routes/app_routes.dart';
import 'package:riverpod_training/routes/routes.dart';

void main() {
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      initialRoute: Routes.home,
      routes: AppRoutes.routes,
    );
  }
}
