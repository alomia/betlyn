// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'seasons_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(season)
const seasonProvider = SeasonFamily._();

final class SeasonProvider
    extends $FunctionalProvider<AsyncValue<Season>, Season, FutureOr<Season>>
    with $FutureModifier<Season>, $FutureProvider<Season> {
  const SeasonProvider._({
    required SeasonFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'seasonProvider',
         isAutoDispose: false,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$seasonHash();

  @override
  String toString() {
    return r'seasonProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<Season> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<Season> create(Ref ref) {
    final argument = this.argument as int;
    return season(ref, leagueId: argument);
  }

  @override
  bool operator ==(Object other) {
    return other is SeasonProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$seasonHash() => r'50fc62667adf7da892709882c1d4e060caafddaf';

final class SeasonFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<Season>, int> {
  const SeasonFamily._()
    : super(
        retry: null,
        name: r'seasonProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: false,
      );

  SeasonProvider call({required int leagueId}) =>
      SeasonProvider._(argument: leagueId, from: this);

  @override
  String toString() => r'seasonProvider';
}
