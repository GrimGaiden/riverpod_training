import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_training/features/joke/data/model/joke_state.dart';
import 'package:riverpod_training/features/joke/data/repository/joke_repository.dart';

class JokeStateNotifier extends StateNotifier<JokeState> {
  JokeStateNotifier(this.jokeRepository) : super(JokeState()) {
    getJoke();
  }
  JokeRepository jokeRepository;

  Future<void> getJoke() async {
    state = state.copyWith(isLoading: true);
    await jokeRepository.fetchJoke().then((data) {
      state = state.copyWith(joke: data, isLoading: false);
    });
  }
}
