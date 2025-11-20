import 'package:betlyn/presentation/screens/screens.dart';
import 'package:betlyn/presentation/views/views.dart';
import 'package:go_router/go_router.dart';

final appRouter = GoRouter(
  initialLocation: '/',

  routes: [
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) =>
          MainShellScreen(navigationShell: navigationShell),
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: '/',
              builder: (context, state) => MatchesView(),
            ),

            GoRoute(
              path: '/match/:id',
              builder: (context, state) => MatchDetailsView(matchId: state.pathParameters['id']!,),
            ),
          ],
        ),
      ],
    ),
  ],
);
