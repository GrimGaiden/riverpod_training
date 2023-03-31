import 'package:riverpod_training/core/network/dio_client.dart';
import 'package:riverpod_training/features/rick_morty/data/apis/constants_rick_morty_api.dart';

class RAMApi {
  final DioClient _dioClient;

  RAMApi(this._dioClient);

  Future<Map<String, dynamic>> fetchCharactersApiRequest() async {
    try {
      final res = await _dioClient.get("${EndpointsRAM.character}/1");
      return res.data;
    } catch (e) {
      rethrow;
    }
  }
}
