import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_training/features/login_hardcodeado/data/appwrite_cliente.dart';

import '../../../routes/routes.dart';

class LoginHardcodeadoView extends ConsumerWidget {
  const LoginHardcodeadoView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final auth = ref.read(authStateProvider.notifier).loginHardcodeado();
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await ref
              .read(authStateProvider.notifier)
              .login('grimgaiden@pm.me', '12345678')
              .then(
            (value) {
              print('==value en login==   $value');
              Navigator.of(context).pushNamed(Routes.loginSuccessful);
            },
          );
        },
        child: const Icon(Icons.arrow_forward),
      ),
    );
  }
}
