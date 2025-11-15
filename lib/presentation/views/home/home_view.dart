import 'package:betlyn/config/helpers/date_formatter.dart';
import 'package:betlyn/presentation/providers/sports/fixtures/fixtures_provider.dart';
import 'package:betlyn/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Betlyn',
          style: textTheme.headlineLarge!.copyWith(
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20.0),
          LeaguesCarousel(),

          SizedBox(height: 30.0),
          Text('Próximos partidos', style: textTheme.titleLarge,),
          FixtureComponent(),
        ],
      ),
    );
  }
}

class FixtureComponent extends ConsumerWidget {
  const FixtureComponent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final fixturesState = ref.watch(fixturesProvider);
    final textTheme = Theme.of(context).textTheme;

    return SizedBox(
      height: 190.0,
      child: fixturesState.when(
        data: (data) => ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: data.length,
          itemBuilder: (context, index) {
            final fixture = data[index];

            return SizedBox(
              width: 250.0,
              child: Card(
                elevation: 0.0,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            DateFormatter.humanDate(
                              fixture.startingAt.toString(),
                            ),
                          ),
                          Spacer(),
                          Text(
                            DateFormatter.humanTime(
                              fixture.startingAt.toString(),
                            ),
                            style: textTheme.titleMedium,
                          ),
                        ],
                      ),

                      Divider(),

                      TeamRow(
                        imagePath: fixture.home.imagePath,
                        name: fixture.away.shortCode.isNotEmpty ? fixture.away.shortCode : fixture.away.name,
                      ),

                      SizedBox(height: 10.0),

                      TeamRow(
                        imagePath: fixture.away.imagePath,
                        name: fixture.away.shortCode.isNotEmpty ? fixture.away.shortCode : fixture.away.name,
                      ),

                      SizedBox(height: 10.0),

                      Row(children: [Text(fixture.league.name)]),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
        error: (error, stackTrace) => Center(child: Text(error.toString())),
        loading: () => Center(child: Text('Cargando')),
      ),
    );
  }
}

class TeamRow extends StatelessWidget {
  final String name;
  final String imagePath;

  const TeamRow({super.key, required this.name, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      spacing: 10.0,
      children: [
        Image.network(imagePath, width: 30.0, height: 30.0),
        Text(name, style: textTheme.titleMedium),
      ],
    );
  }
}
