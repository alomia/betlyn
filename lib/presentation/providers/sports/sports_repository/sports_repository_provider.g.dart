// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sports_repository_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(sportsRepository)
const sportsRepositoryProvider = SportsRepositoryProvider._();

final class SportsRepositoryProvider
    extends
        $FunctionalProvider<
          SportsRepositoryImpl,
          SportsRepositoryImpl,
          SportsRepositoryImpl
        >
    with $Provider<SportsRepositoryImpl> {
  const SportsRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'sportsRepositoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$sportsRepositoryHash();

  @$internal
  @override
  $ProviderElement<SportsRepositoryImpl> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  SportsRepositoryImpl create(Ref ref) {
    return sportsRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SportsRepositoryImpl value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SportsRepositoryImpl>(value),
    );
  }
}

String _$sportsRepositoryHash() => r'79008c257bec8d3b0681b19ca95ee7dfdc81b3de';
