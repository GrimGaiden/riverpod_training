import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_training/features/joke/providers/joke_provider.dart';

import '../widgets/joke_view.dart';
import '../widgets/refresh_joke.dart';

class JokesPage extends ConsumerWidget {
  const JokesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 1 -------------------------
    final joke = ref.watch(jokeDataProvider).joke;
    // 2 -------------------------
    final isLoading = ref.watch(jokeDataProvider).isLoading;
    return Scaffold(
      floatingActionButton: const RefreshJoke(),
      appBar: AppBar(
        title: const Text('Jokes'),
      ),
      // 3 -------------------------
      body: isLoading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : JokeView(joke: joke),
    );
  }
}
