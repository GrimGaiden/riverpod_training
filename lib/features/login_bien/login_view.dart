import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../routes/routes.dart';
import '../login_hardcodeado/data/appwrite_cliente.dart';

class LoginView extends ConsumerWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    TextEditingController userLoginController = TextEditingController();
    TextEditingController userPasswordController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: Center(
        /// make a login form, with a username and password field
        child: Form(
          child: Column(
            children: [
              TextFormField(
                controller: userLoginController,
                decoration: const InputDecoration(
                  hintText: 'Username',
                ),
              ),
              TextFormField(
                controller: userPasswordController,
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: 'Password',
                ),
              ),
              ElevatedButton(
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
                      .login(
                          userLoginController.text, userPasswordController.text)
                      .whenComplete(() => null)
                      .then(
                    (value) {
                      print('==value en login==   $value');
                      Navigator.of(context).pushNamed(Routes.loginSuccessful);
                    },
                  );
                },
                child: const Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
