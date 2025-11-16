// presentation/widgets/fixtures/fixtures_list.dart

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:betlyn/presentation/providers/sports/fixtures/fixtures_provider.dart';
import 'package:betlyn/presentation/widgets/fixtures/fixture_card.dart';

class FixturesList extends ConsumerWidget {
  const FixturesList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = Theme.of(context).textTheme;
    final fixturesState = ref.watch(fixturesProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text('Próximos partidos', style: textTheme.titleLarge!.copyWith(
            fontWeight: FontWeight.w500
          ),),
        ),
        SizedBox(height: 10.0),
        SizedBox(
          height: 170,
          child: fixturesState.when(
            data: (fixtures) => ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              itemCount: fixtures.length,
              itemBuilder: (_, i) => FixtureCard(fixture: fixtures[i]),
            ),
            loading: () => const Center(child: Text("Cargando...")),
            error: (e, _) => Center(child: Text(e.toString())),
          ),
        ),
      ],
    );
  }
}
