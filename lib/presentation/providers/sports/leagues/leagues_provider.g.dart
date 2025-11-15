// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leagues_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(leagues)
const leaguesProvider = LeaguesProvider._();

final class LeaguesProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<League>>,
          List<League>,
          FutureOr<List<League>>
        >
    with $FutureModifier<List<League>>, $FutureProvider<List<League>> {
  const LeaguesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'leaguesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$leaguesHash();

  @$internal
  @override
  $FutureProviderElement<List<League>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<League>> create(Ref ref) {
    return leagues(ref);
  }
}

String _$leaguesHash() => r'fb39cfbcda181deec5b6673e17ed094c4a0c6271';
