import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../data/apis/constants_rick_morty_api.dart';
import '../data/models/character_model.dart';

part 'ram_character_api.g.dart';

@riverpod
class AsyncRamCaharcterApi extends _$AsyncRamCaharcterApi {
  final Dio _dio = Dio();

  Future<CharacterModel> _getCharacter() async {
    Response response = await _dio.get('${EndpointsRAM.character}2');
    log('\n\n\n response:  $response ');
    // CharacterModel personaje =
    //     CharacterModel.fromJson(response as Map<String, dynamic>);
    CharacterModel personaje = CharacterModel.fromJson(response.data);
    log('personaje-----------------\n$personaje');
    return personaje;
  }

  @override
  FutureOr<CharacterModel> build() {
    return _getCharacter();
  }
}
