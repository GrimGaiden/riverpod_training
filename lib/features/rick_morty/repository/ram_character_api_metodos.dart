import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../data/apis/constants_rick_morty_api.dart';
import '../data/models/character_model.dart';

part 'ram_character_api_metodos.g.dart';

@riverpod
class AsyncRamCaharcterApiMetodos extends _$AsyncRamCaharcterApiMetodos {
  final Dio _dio = Dio();

  @override
  FutureOr<CharacterModel> build({int id = 1}) {
    return CharacterModel(id, 'mierda', 'mi culo');
  }

  void getCharacter(int id) async {
    Response response = await _dio.get('${EndpointsRAM.character}$id');
    log('\n\n\n response:  $response ');
    // CharacterModel personaje =
    //     CharacterModel.fromJson(response as Map<String, dynamic>);
    state = AsyncValue.data(CharacterModel.fromJson(response.data));
  }
}
