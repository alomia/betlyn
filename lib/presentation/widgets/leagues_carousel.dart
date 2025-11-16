import 'package:betlyn/domain/entities/entities.dart';
import 'package:betlyn/presentation/providers/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LeaguesCarousel extends ConsumerWidget {
  const LeaguesCarousel({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final leaguesState = ref.watch(leaguesProvider);
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return leaguesState.when(
      data: (data) => SizedBox(
        height: 120,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          separatorBuilder: (_, __) => const SizedBox(width: 15),
          itemCount: data.length,
          itemBuilder: (context, index) {
            final league = data[index];
            return _LeagueItem(league: league, textTheme: textTheme, colorScheme: colorScheme);
          },
        ),
      ),
      error: (error, _) =>  Center(child: Text(error.toString())),
      loading: () => const Center(child: CircularProgressIndicator()),
    );
  }
}

class _LeagueItem extends StatelessWidget {
  final League league;
  final TextTheme textTheme;
  final ColorScheme colorScheme;

  const _LeagueItem({
    required this.league,
    required this.textTheme,
    required this.colorScheme,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80.0,
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 35,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Image.network(
                league.imagePath,
                fit: BoxFit.contain,
              ),
            ),
          ),
          const SizedBox(height: 8.0),
          Text(
            league.name,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            style: textTheme.bodyMedium?.copyWith(fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
