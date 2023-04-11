import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../routes/routes.dart';
import '../data/appwrite_cliente.dart';

class LoginSuccessfulView extends ConsumerWidget {
  const LoginSuccessfulView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Successful'),
      ),
      body: Column(
        children: [
          const Text('logeado con extido'),
          OutlinedButton(
            onPressed: () async {
              await ref.read(authStateProvider.notifier).logOut().then((value) {
                print('==value==   $value');
                Navigator.of(context).pushNamed(Routes.loginHardcodeado);
              });
            },
            child: const Icon(Icons.arrow_back),
          ),
        ],
      ),
    );
  }
}
