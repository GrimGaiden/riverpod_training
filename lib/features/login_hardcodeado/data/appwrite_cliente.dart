import 'dart:developer';

import 'package:appwrite/appwrite.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:appwrite/models.dart' as model;
part 'appwrite_cliente.g.dart';

@riverpod
class AuthState extends _$AuthState {
  @override
  build() {
    final clientAW = Client()
        .setEndpoint('http://217.76.139.82/v1')
        .setProject('63e7ebccc96cb679c3cd');

    final accountAW = Account(clientAW);
    log("${accountAW.get()}");
    return;
  }

  Future<int> loginHardcodeado() async {
    final clientAW = Client()
        .setEndpoint('http://217.76.139.82/v1')
        .setProject('63e7ebccc96cb679c3cd');

    final accountAW = Account(clientAW);
    await accountAW.createEmailSession(
        email: 'grimgaiden@pm.me', password: '12345678');

    log("${accountAW.get()}");
    return 1;
  }

  Future<model.Session> login(String mail, String password) async {
    final clientAW = Client()
        .setEndpoint('http://217.76.139.82/v1')
        .setProject('63e7ebccc96cb679c3cd');

    final accountAW = Account(clientAW);
    try {
      final response =
          await accountAW.createEmailSession(email: mail, password: password);
      log("${accountAW.get()}");
      return response;
    } on AppwriteException {
      rethrow;
    }
  }

  Future<bool> logOut() async {
    final clientAW = Client()
        .setEndpoint('http://217.76.139.82/v1')
        .setProject('63e7ebccc96cb679c3cd');

    final accountAW = Account(clientAW);
    try {
      await accountAW.deleteSessions();
      return true;
    } catch (e) {
      rethrow;
    }
  }
}
