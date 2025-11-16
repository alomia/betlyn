import 'package:betlyn/config/helpers/date_formatter.dart';
import 'package:betlyn/presentation/providers/sports/fixtures/fixtures_provider.dart';
import 'package:betlyn/presentation/widgets/fixtures/fixtures_list.dart';
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
          SizedBox(height: 50.0),
          FixturesList(),
        ],
      ),
    );
  }
}

