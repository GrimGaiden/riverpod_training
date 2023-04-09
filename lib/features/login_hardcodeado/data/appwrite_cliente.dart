import 'dart:developer';

import 'package:appwrite/appwrite.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'appwrite_cliente.g.dart';

@riverpod
class AuthState extends _$AuthState {
  @override
  build() async {
    final clientAW = Client()
        .setEndpoint('http://217.76.139.82/v1')
        .setProject('63e7ebccc96cb679c3cd');

    final accountAW = Account(clientAW);
    await accountAW.createEmailSession(
        email: 'grimgaiden@pm.me', password: '12345678');

    log("${accountAW.get()}");
    return;
  }

  Future<int> login() async {
    final clientAW = Client()
        .setEndpoint('http://217.76.139.82/v1')
        .setProject('63e7ebccc96cb679c3cd');

    final accountAW = Account(clientAW);
    await accountAW.createEmailSession(
        email: 'grimgaiden@pm.me', password: '12345678');

    log("${accountAW.get()}");
    return 1;
  }
}
