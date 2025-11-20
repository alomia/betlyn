// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_prediction_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(MatchPrediction)
const matchPredictionProvider = MatchPredictionProvider._();

final class MatchPredictionProvider
    extends $NotifierProvider<MatchPrediction, FixtureMap> {
  const MatchPredictionProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'matchPredictionProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$matchPredictionHash();

  @$internal
  @override
  MatchPrediction create() => MatchPrediction();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(FixtureMap value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FixtureMap>(value),
    );
  }
}

String _$matchPredictionHash() => r'6eeda0e65509739a4580554753bb3d9a2aa0fdc5';

abstract class _$MatchPrediction extends $Notifier<FixtureMap> {
  FixtureMap build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<FixtureMap, FixtureMap>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<FixtureMap, FixtureMap>,
              FixtureMap,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
