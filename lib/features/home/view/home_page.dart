import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_training/routes/routes.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Título"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                child: const Text('jokes'),
                onPressed: () {
                  Navigator.of(context).pushNamed(Routes.jokes);
                }),
            const SizedBox(height: 20.0),
            //Todo cambiar a products
            ElevatedButton(
                child: const Text('Rick and Morty'),
                onPressed: () {
                  Navigator.of(context).pushNamed(Routes.ram);
                }),
          ],
        ),
      ),
    );
  }
}
