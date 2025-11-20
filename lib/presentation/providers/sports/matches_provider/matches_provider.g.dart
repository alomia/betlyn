// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'matches_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(matches)
const matchesProvider = MatchesFamily._();

final class MatchesProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Fixture>>,
          List<Fixture>,
          FutureOr<List<Fixture>>
        >
    with $FutureModifier<List<Fixture>>, $FutureProvider<List<Fixture>> {
  const MatchesProvider._({
    required MatchesFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'matchesProvider',
         isAutoDispose: false,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$matchesHash();

  @override
  String toString() {
    return r'matchesProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<Fixture>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Fixture>> create(Ref ref) {
    final argument = this.argument as int;
    return matches(ref, leagueId: argument);
  }

  @override
  bool operator ==(Object other) {
    return other is MatchesProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$matchesHash() => r'39a5b01dd794c6470e3c4baf054b60fcf48762c1';

final class MatchesFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<List<Fixture>>, int> {
  const MatchesFamily._()
    : super(
        retry: null,
        name: r'matchesProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: false,
      );

  MatchesProvider call({required int leagueId}) =>
      MatchesProvider._(argument: leagueId, from: this);

  @override
  String toString() => r'matchesProvider';
}
