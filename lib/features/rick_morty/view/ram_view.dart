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
    final characterResponse1 =
        ref.watch(asyncRamCaharcterApiMetodosProvider(id: 1));
    final characterResponse2 =
        ref.watch(asyncRamCaharcterApiMetodosProvider(id: 2));

    return Scaffold(
      body: Row(
        children: [
          Column(
            children: [
              Container(
                  child: characterResponse1.when(
                data: (characterResponse1) => Text("${characterResponse1.id}"),
                error: (err, stack) => Text('Mi Error: $err'),
                loading: () => const CircularProgressIndicator(),
              )),
              // ElevatedButton(
              //     onPressed: () => ref
              //         .read(asyncRamCaharcterApiMetodosProvider.notifier)
              //         .getCharacter(1),
              //     child: const Text("Id 1"))
            ],
          ),
          Column(
            children: [
              Container(
                  child: characterResponse2.when(
                data: (characterResponse2) => Text("${characterResponse2.id}"),
                error: (err, stack) => Text('Mi Error: $err'),
                loading: () => const CircularProgressIndicator(),
              )),
              // ElevatedButton(
              //     onPressed: () => ref
              //         .read(asyncRamCaharcterApiMetodosProvider.notifier)
              //         .getCharacter(9),
              //     child: const Text("Id 9"))
            ],
          )
        ],
      ),
    );
  }
}
