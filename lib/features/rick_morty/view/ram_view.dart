import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_training/features/rick_morty/data/models/character_model.dart';

import '../repository/ram_character_api.dart';

class RAMView extends ConsumerWidget {
  const RAMView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final characterResponse = ref.watch(asyncRamCaharcterApiProvider);
    return characterResponse.when(
      error: (err, stack) => Text('Mi Error: $err'),
      loading: () => const CircularProgressIndicator(),
      data: (character) {
        return MaterialApp(
          title: 'Material App',
          home: Scaffold(
            appBar: AppBar(
              title: const Text('Material App Bar'),
            ),
            body: Center(
              child: Text(character.name),
              // child: characterModel.when(data: (characterResponse) => Text(characterResponse.value.name), error: error, loading: loading),
            ),
          ),
        );
      },
    );
  }
}
