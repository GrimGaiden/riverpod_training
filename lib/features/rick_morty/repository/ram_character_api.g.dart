// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ram_character_api.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$asyncRamCaharcterApiHash() =>
    r'03670732fa662957df1b6961466200ae63aaf9e0';

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

abstract class _$AsyncRamCaharcterApi
    extends BuildlessAutoDisposeAsyncNotifier<CharacterModel> {
  late final int id;

  FutureOr<CharacterModel> build(
    int id,
  );
}

/// See also [AsyncRamCaharcterApi].
@ProviderFor(AsyncRamCaharcterApi)
const asyncRamCaharcterApiProvider = AsyncRamCaharcterApiFamily();

/// See also [AsyncRamCaharcterApi].
class AsyncRamCaharcterApiFamily extends Family<AsyncValue<CharacterModel>> {
  /// See also [AsyncRamCaharcterApi].
  const AsyncRamCaharcterApiFamily();

  /// See also [AsyncRamCaharcterApi].
  AsyncRamCaharcterApiProvider call(
    int id,
  ) {
    return AsyncRamCaharcterApiProvider(
      id,
    );
  }

  @override
  AsyncRamCaharcterApiProvider getProviderOverride(
    covariant AsyncRamCaharcterApiProvider provider,
  ) {
    return call(
      provider.id,
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
  String? get name => r'asyncRamCaharcterApiProvider';
}

/// See also [AsyncRamCaharcterApi].
class AsyncRamCaharcterApiProvider extends AutoDisposeAsyncNotifierProviderImpl<
    AsyncRamCaharcterApi, CharacterModel> {
  /// See also [AsyncRamCaharcterApi].
  AsyncRamCaharcterApiProvider(
    this.id,
  ) : super.internal(
          () => AsyncRamCaharcterApi()..id = id,
          from: asyncRamCaharcterApiProvider,
          name: r'asyncRamCaharcterApiProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$asyncRamCaharcterApiHash,
          dependencies: AsyncRamCaharcterApiFamily._dependencies,
          allTransitiveDependencies:
              AsyncRamCaharcterApiFamily._allTransitiveDependencies,
        );

  final int id;

  @override
  bool operator ==(Object other) {
    return other is AsyncRamCaharcterApiProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  FutureOr<CharacterModel> runNotifierBuild(
    covariant AsyncRamCaharcterApi notifier,
  ) {
    return notifier.build(
      id,
    );
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
