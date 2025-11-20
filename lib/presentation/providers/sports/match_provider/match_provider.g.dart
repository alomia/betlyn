// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'match_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(match)
const matchProvider = MatchFamily._();

final class MatchProvider
    extends $FunctionalProvider<AsyncValue<Fixture>, Fixture, FutureOr<Fixture>>
    with $FutureModifier<Fixture>, $FutureProvider<Fixture> {
  const MatchProvider._({
    required MatchFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'matchProvider',
         isAutoDispose: false,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$matchHash();

  @override
  String toString() {
    return r'matchProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<Fixture> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<Fixture> create(Ref ref) {
    final argument = this.argument as int;
    return match(ref, fixtureId: argument);
  }

  @override
  bool operator ==(Object other) {
    return other is MatchProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$matchHash() => r'6ca1b9594bd4c055c0f379b87958041e53d93667';

final class MatchFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<Fixture>, int> {
  const MatchFamily._()
    : super(
        retry: null,
        name: r'matchProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: false,
      );

  MatchProvider call({required int fixtureId}) =>
      MatchProvider._(argument: fixtureId, from: this);

  @override
  String toString() => r'matchProvider';
}
