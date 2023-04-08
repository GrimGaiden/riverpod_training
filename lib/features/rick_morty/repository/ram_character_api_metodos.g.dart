// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ram_character_api_metodos.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$asyncRamCaharcterApiMetodosHash() =>
    r'72672028d08ac36c6abebf0a2384ade4758456fa';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$AsyncRamCaharcterApiMetodos
    extends BuildlessAutoDisposeAsyncNotifier<CharacterModel> {
  late final int id;

  FutureOr<CharacterModel> build({
    int id = 1,
  });
}

/// See also [AsyncRamCaharcterApiMetodos].
@ProviderFor(AsyncRamCaharcterApiMetodos)
const asyncRamCaharcterApiMetodosProvider = AsyncRamCaharcterApiMetodosFamily();

/// See also [AsyncRamCaharcterApiMetodos].
class AsyncRamCaharcterApiMetodosFamily
    extends Family<AsyncValue<CharacterModel>> {
  /// See also [AsyncRamCaharcterApiMetodos].
  const AsyncRamCaharcterApiMetodosFamily();

  /// See also [AsyncRamCaharcterApiMetodos].
  AsyncRamCaharcterApiMetodosProvider call({
    int id = 1,
  }) {
    return AsyncRamCaharcterApiMetodosProvider(
      id: id,
    );
  }

  @override
  AsyncRamCaharcterApiMetodosProvider getProviderOverride(
    covariant AsyncRamCaharcterApiMetodosProvider provider,
  ) {
    return call(
      id: provider.id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'asyncRamCaharcterApiMetodosProvider';
}

/// See also [AsyncRamCaharcterApiMetodos].
class AsyncRamCaharcterApiMetodosProvider
    extends AutoDisposeAsyncNotifierProviderImpl<AsyncRamCaharcterApiMetodos,
        CharacterModel> {
  /// See also [AsyncRamCaharcterApiMetodos].
  AsyncRamCaharcterApiMetodosProvider({
    this.id = 1,
  }) : super.internal(
          () => AsyncRamCaharcterApiMetodos()..id = id,
          from: asyncRamCaharcterApiMetodosProvider,
          name: r'asyncRamCaharcterApiMetodosProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$asyncRamCaharcterApiMetodosHash,
          dependencies: AsyncRamCaharcterApiMetodosFamily._dependencies,
          allTransitiveDependencies:
              AsyncRamCaharcterApiMetodosFamily._allTransitiveDependencies,
        );

  final int id;

  @override
  bool operator ==(Object other) {
    return other is AsyncRamCaharcterApiMetodosProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  FutureOr<CharacterModel> runNotifierBuild(
    covariant AsyncRamCaharcterApiMetodos notifier,
  ) {
    return notifier.build(
      id: id,
    );
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
