// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'predictions_repository_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(predictionsRepository)
const predictionsRepositoryProvider = PredictionsRepositoryProvider._();

final class PredictionsRepositoryProvider
    extends
        $FunctionalProvider<
          PredictionsRepositoryImpl,
          PredictionsRepositoryImpl,
          PredictionsRepositoryImpl
        >
    with $Provider<PredictionsRepositoryImpl> {
  const PredictionsRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'predictionsRepositoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$predictionsRepositoryHash();

  @$internal
  @override
  $ProviderElement<PredictionsRepositoryImpl> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  PredictionsRepositoryImpl create(Ref ref) {
    return predictionsRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PredictionsRepositoryImpl value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PredictionsRepositoryImpl>(value),
    );
  }
}

String _$predictionsRepositoryHash() =>
    r'5187ea3c32534800b5f629af513fb0eccd432ee6';
