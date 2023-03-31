import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RAMView extends ConsumerWidget {
  const RAMView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: const Center(
          child: ElevatedButton(onPressed: onPressed, child: Text("Personaje")),
        ),
      ),
    );
  }
}