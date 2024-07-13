import 'package:go_router/go_router.dart';
import 'package:ga_eats_app/features/auth/login/2_presentation/screens/login_screen.dart';
import 'package:ga_eats_app/features/splash/2_presentation/screens/splash_screen.dart';

// final GlobalKey<NavigatorState> _rootNavigatorKey =
//     GlobalKey<NavigatorState>(debugLabel: 'root');
// final GlobalKey<NavigatorState> _shellNavigatorKey =
//     GlobalKey<NavigatorState>(debugLabel: 'shell');

final routes = GoRouter(
  // navigatorKey: _rootNavigatorKey,
  initialLocation: '/splash',
  routes: [
    GoRoute(
      path: '/splash',
      builder: (context, state) => const SplashScreenProvider(),
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginScreenProvider(),
    ),
  ],
);
