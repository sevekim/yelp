import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:yelp/core/enum/app_route_enum.dart';
import 'package:yelp/ui/routes/home/home_screen.dart';

class AppRouterNotifier extends Notifier<GoRouter> {
  @override
  GoRouter build() {
    return GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: false,
      routes: [
        GoRoute(
          path: '/',
          name: AppRouteEnum.homeScreenRoute.name,
          builder: (context, state) => const HomeScreen(),
          routes: const [],
        ),
      ],
    );
  }
}

final appRouterProvider = NotifierProvider<AppRouterNotifier, GoRouter>(() {
  return AppRouterNotifier();
});
