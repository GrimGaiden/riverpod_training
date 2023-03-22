import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_training/features/joke/data/api/joke_api.dart';
import 'package:riverpod_training/features/joke/data/model/joke_state.dart';
import 'package:riverpod_training/features/joke/data/repository/joke_repository.dart';
import 'package:riverpod_training/core/providers/dio_provider.dart';
import 'package:riverpod_training/features/joke/providers/joke_state_provider.dart';

final jokeApiProvider = Provider<JokeApi>((ref) {
  return JokeApi(ref.read(dioClientProvider));
});

final jokeRepositoryProvider = Provider<JokeRepository>((ref) {
  return JokeRepository(ref.read(jokeApiProvider));
});

final jokeDataProvider =
    StateNotifierProvider<JokeStateNotifier, JokeState>((ref) {
  return JokeStateNotifier(ref.read(jokeRepositoryProvider));
});
