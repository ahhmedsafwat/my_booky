import 'package:go_router/go_router.dart';
import 'package:my_bookly/Features/home/Presentation/views/book_details_view.dart';
import 'package:my_bookly/Features/home/Presentation/views/home_view.dart';

import '../../Features/Splash/Presentation/splash_view.dart';

abstract class AppRoute {
  static String homeView = '/HomeView';
  static String bookDetailsView = '/BookDetailsView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: AppRoute.homeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: AppRoute.bookDetailsView,
        builder: (context, state) => const BookDetailsView(),
      )
    ],
  );
}
