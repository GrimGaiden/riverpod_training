import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_training/features/rick_morty/data/models/character_model.dart';

import '../repository/ram_character_api.dart';
import '../repository/ram_character_api_metodos.dart';

class RAMView extends ConsumerWidget {
  const RAMView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final characterResponse1 = ref.watch(AsyncRamCaharcterApiMetodosFamily());
    final characterResponse2 = ref.watch(asyncRamCaharcterApiMetodosProvider());

    return Scaffold(
      body: Row(
        children: [
          Column(
            children: [
              Container(
                  child: characterResponse1.when(
                data: (characterResponse1) => Text(characterResponse1.name!),
                error: (err, stack) => Text('Mi Error: $err'),
                loading: () => const CircularProgressIndicator(),
              )),
              ElevatedButton(
                  onPressed: () => ref
                      .read(asyncRamCaharcterApiMetodosProvider.notifier)
                      .getCharacter(5),
                  child: const Text("Id 5"))
            ],
          ),
          Column(
            children: [
              Container(
                  child: characterResponse2.when(
                data: (characterResponse2) => Text(characterResponse2.name!),
                error: (err, stack) => Text('Mi Error: $err'),
                loading: () => const CircularProgressIndicator(),
              )),
              ElevatedButton(
                  onPressed: () => ref
                      .read(asyncRamCaharcterApiMetodosProvider.notifier)
                      .getCharacter(9),
                  child: const Text("Id 9"))
            ],
          )
        ],
      ),
    );
  }
}
