class MatchPredictionState {
  final bool isLoading;
  final String? prediction;
  final String? error;

  MatchPredictionState({
    required this.isLoading,
    required this.prediction,
    required this.error,
  });
}
