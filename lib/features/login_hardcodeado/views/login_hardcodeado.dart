import 'package:appwrite/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_training/features/login_hardcodeado/data/appwrite_cliente.dart';

import '../../../routes/routes.dart';

class LoginHardcodeadoView extends ConsumerWidget {
  const LoginHardcodeadoView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final auth = ref.read(authStateProvider.notifier).loginHardcodeado();
    // Session response;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login hardcodeado"),
      ),
      floatingActionButton: FloatingActionButton(
        // onPressed: () async {
        //   response = await ref
        //       .read(authStateProvider.notifier)
        //       .login('grimgaiden@pm.me', '12345678')
        //       .then(
        // (value) {
        //   print('==value en login==   $value\nemail:');
        //   Navigator.of(context).pushNamed(Routes.loginSuccessful);
        // },
        //   );
        // },
        onPressed: () async {
          showDialog(
              context: context,
              builder: (context) {
                return Center(
                  child: const CircularProgressIndicator(),
                );
              });
          await ref
              .read(authStateProvider.notifier)
              .login('raulmestas@gmail.com', '12345678')
              .whenComplete(() => null)
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
