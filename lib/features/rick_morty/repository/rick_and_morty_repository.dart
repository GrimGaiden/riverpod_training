import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:riverpod_training/core/network/dio_exceptions.dart';
import 'package:riverpod_training/features/rick_morty/data/apis/rick_morty_api.dart';
import 'package:riverpod_training/features/rick_morty/data/models/character_model.dart';

class RAMRepository {
  final RAMApi _ramApi;

  RAMRepository(this._ramApi);

  Future<CharacterModel> fetchCharacter() async {
    try {
      final res = await _ramApi.fetchCharactersApiRequest();
      final characterModel = CharacterModel.fromJson(res);
      print(characterModel);
      return characterModel;
    } on DioError catch (e) {
      final errorMessage = DioExceptions.fromDioError(e);
      log(errorMessage.toString());
      rethrow;
    }
  }
}
