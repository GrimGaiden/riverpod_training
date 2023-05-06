import 'dart:developer';

import 'package:appwrite/appwrite.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:appwrite/models.dart' as model;
part 'appwrite_cliente.g.dart';

@riverpod
class AuthState extends _$AuthState {
  late Account accountAW;
  @override
  build() {
    Client client = Client()
        .setEndpoint('http://217.76.139.82/v1')
        .setProject('63e7ebccc96cb679c3cd');

    accountAW = Account(client);

    return accountAW.get();
  }

  FutureOr<dynamic> login(String mail, String password) async {
    final clientAW = Client()
        .setEndpoint('http://217.76.139.82/v1')
        .setProject('63e7ebccc96cb679c3cd');

    final accountAW = Account(clientAW);

    // loading cicle
    // Consumer(
    //   builder: (context, ref, _) {
    //     return showDialog(
    //         context: context,
    //         builder: (context) {
    //           return const Center(child: CircularProgressIndicator());
    //         });
    //   },
    // );

    try {
      // showDialog(
      //     context: context,
      //     builder: (BuildContext context) {
      //       return const Center(
      //         child: CircularProgressIndicator(),
      //       );
      //     });
      //   Widget build(BuildContext context) {
      //   return showDialog(
      //     context: context,
      //     builder: (BuildContext context) {
      //       return const Center(
      //         child: CircularProgressIndicator(),
      //       );
      //     });
      // }

      model.Session response =
          await accountAW.createEmailSession(email: mail, password: password);
      log('appwrite_cliente: login con userid: ${response.userId}}');
      log('idSession: ${response.$id}}');

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
