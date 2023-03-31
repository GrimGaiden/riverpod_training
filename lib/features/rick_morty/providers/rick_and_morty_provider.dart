import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_training/core/providers/dio_provider.dart';
import 'package:riverpod_training/features/rick_morty/data/apis/rick_morty_api.dart';
import 'package:riverpod_training/features/rick_morty/repository/rick_and_morty_repository.dart';

final RAMApiProvider = Provider<RAMApi>((ref) {
  return RAMApi(ref.read(dioClientProvider));
});

final RAMRepositoryProvider = Provider<RAMRepository>((ref) {
  return RAMRepository(ref.read(RAMApiProvider));
});