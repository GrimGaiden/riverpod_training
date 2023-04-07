import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_training/features/login_hardcodeado/data/appwrite_cliente.dart';

class LoginHardcodeadoView extends ConsumerWidget {
  const LoginHardcodeadoView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final auth = ref.read(authStateProvider.notifier).login();
    return Scaffold(
        floatingActionButton: FloatingActionButton(onPressed: () {}));
  }
}
