// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fixtures_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(fixtures)
const fixturesProvider = FixturesProvider._();

final class FixturesProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Fixture>>,
          List<Fixture>,
          FutureOr<List<Fixture>>
        >
    with $FutureModifier<List<Fixture>>, $FutureProvider<List<Fixture>> {
  const FixturesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'fixturesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$fixturesHash();

  @$internal
  @override
  $FutureProviderElement<List<Fixture>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Fixture>> create(Ref ref) {
    return fixtures(ref);
  }
}

String _$fixturesHash() => r'54a3bd1ff088fd650871048cdd6b39e72eb33288';
