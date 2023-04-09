import 'package:riverpod_training/features/home/view/home_page.dart';
import 'package:riverpod_training/features/login/view/login_view.dart';
import 'package:riverpod_training/features/login_hardcodeado/views/login_hardcodeado.dart';
import 'package:riverpod_training/routes/routes.dart';

import '../features/joke/view/joke_page.dart';
import '../features/rick_morty/view/ram_view.dart';

class AppRoutes {
  static final routes = {
    Routes.home: (context) => const HomePage(),
    Routes.jokes: (context) => const JokesPage(),
    Routes.ram: (context) => const RAMView(),
    Routes.login: (context) => const LoginView(),
    Routes.loginHardcodeado: (context) => const LoginHardcodeadoView(),
    // Routes.products: (context) => const ProductsPage(),
  };
}
