import 'package:go_router/go_router.dart';
import 'package:todoapp/src/features/splash/presentation/splash_screen.dart';
import 'package:todoapp/src/features/todo/presentation/task_home_screen.dart';

class AppRouter {
  final GoRouter goRouter;

  AppRouter() : goRouter = _router;

  static GoRouter get _router => GoRouter(
        initialLocation: '/',
        routes: <GoRoute>[
          GoRoute(
              path: '/',
              builder: (context, builder) {
                return const SplashScreen();
              }),
          GoRoute(
              path: '/taskHome',
              builder: (context, builder) {
                return const TaskHomeScreen();
              }),
        ],
      );
}