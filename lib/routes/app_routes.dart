import 'package:riverpod_training/features/home/view/home_page.dart';
import 'package:riverpod_training/routes/routes.dart';

import '../features/joke/view/joke_page.dart';

class AppRoutes {
  static final routes = {
    Routes.home: (context) => const HomePage(),
    Routes.jokes: (context) => const JokesPage(),
    // Routes.products: (context) => const ProductsPage(),
  };
}
