import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:my_bookly/Features/home/Presentation/views/book_details_view.dart';
import 'package:my_bookly/Features/home/Presentation/views/home_view.dart';
import 'package:my_bookly/Features/home/Presentation/views/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:my_bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:my_bookly/Features/home/data/repos/home_repo_implementation.dart';
import 'package:my_bookly/Features/search/presentation/views/search_view.dart';
import 'package:my_bookly/core/utils/service_locator.dart';
import '../../Features/Splash/Presentation/splash_view.dart';

abstract class AppRoute {
  static String homeView = '/HomeView';
  static String bookDetailsView = '/BookDetailsView';
  static String searchView = '/SearchView';
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
        builder: (context, state) => BlocProvider(
          create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImpl>()),
          child: BookDetailsView(
            bookModel: state.extra as BookModel,
          ),
        ),
      ),
      GoRoute(
        path: AppRoute.searchView,
        builder: (context, state) => const SearchView(),
      )
    ],
  );
}
