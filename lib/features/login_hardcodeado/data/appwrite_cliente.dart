import 'dart:developer';

import 'package:appwrite/appwrite.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:appwrite/models.dart' as model;
part 'appwrite_cliente.g.dart';

@riverpod
class AuthState extends _$AuthState {
  var _idSession;

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
      model.Session response =
          await accountAW.createEmailSession(email: mail, password: password);
      log('appwrite_cliente: login con userid: ${response.userId}}');
      log('idSession: ${response.$id}}');

      _idSession = response.$id;
      log("${accountAW.get()}");
      log("${accountAW.get().toString()}");
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
      await accountAW.deleteSession(sessionId: 'current');
      return true;
    } catch (e) {
      rethrow;
    }
  }
}


// @@riverpod
// class AsyncAuth extends _$AsyncAuth {

// @override
// FutureOr<model.Account> build() async {
//   return _getSesion();
// }

//   FutureOr<model.Account> _getSesion() {
//     return 
//   }
// } 