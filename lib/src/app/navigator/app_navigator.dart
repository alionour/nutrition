import 'package:go_router/go_router.dart';
import 'package:nutrition/src/home/view/home_view.dart';

class AppNavigator {
  AppNavigator._privateContructor();
  static final _instance = AppNavigator._privateContructor();
  factory AppNavigator() {
    return _instance;
  }
  static GoRouter get router => _goRouter;
  static final _goRouter = GoRouter(
    initialLocation: HomeView.routeName,
    routes: [
      GoRoute(
        path: HomeView.routeName,
        builder: (context, state) => const HomeView(),
      ),
    ],
  );
}
