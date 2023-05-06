import 'package:appwrite/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_training/features/login_hardcodeado/data/appwrite_cliente.dart';

import '../../../routes/routes.dart';

class LoginHardcodeadoView extends ConsumerWidget {
  const LoginHardcodeadoView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Future<model.Session> authResponse = ref.watch(authStateProvider.notifier);
    // Session response;
    return Scaffold(
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
          var algo = await ref
              .read(authStateProvider.notifier)
              .login('grimgaiden@pm.me', '12345678')
              .then(showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }))
              .whenComplete(() => null);

          // await ref
          //     .read(authStateProvider.notifier)
          //     .login('grimgaiden@pm.me', '12345678')
          //     .then(
          //   (value) {
          //     print('==value en login==   $value');
          //     Navigator.of(context).pushNamed(Routes.loginSuccessful);
          //   },
          // );
        },
        child: const Icon(Icons.arrow_forward),
      ),
    );
  }
}
