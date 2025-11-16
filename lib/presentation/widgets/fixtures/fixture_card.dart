// presentation/widgets/fixtures/fixture_card.dart

import 'package:flutter/material.dart';
import 'package:betlyn/config/helpers/date_formatter.dart';
import 'package:betlyn/presentation/widgets/fixtures/team_row.dart';
import 'package:betlyn/domain/entities/fixture.dart'; // Ajusta si tu entidad está en otra ruta

class FixtureCard extends StatelessWidget {
  final Fixture fixture;

  const FixtureCard({super.key, required this.fixture});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return SizedBox(
      width: 220,
      child: Card(
        elevation: 0,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [

              /// Fecha y hora
              Row(
                children: [
                  Text(DateFormatter.humanDate(fixture.startingAt.toString())),
                  const Spacer(),
                  Text(
                    DateFormatter.humanTime(fixture.startingAt.toString()),
                    style: textTheme.titleMedium,
                  ),
                ],
              ),

              Divider(color: Colors.grey.shade300),

              /// Home team
              TeamRow(
                imagePath: fixture.home.imagePath,
                name: fixture.home.name,
              ),

              const SizedBox(height: 10),

              /// Away team
              TeamRow(
                imagePath: fixture.away.imagePath,
                name: fixture.away.name,
              ),

              const SizedBox(height: 15),

              /// Liga y estadio
              Row(
                children: [
                  Expanded(
                    child: Text(
                      '${fixture.league.name} - ${fixture.venue.name}',
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: textTheme.bodySmall!.copyWith(
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
