import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_bookly/Features/home/Presentation/views/manager/featured_books_cubit/feature_books_cubit.dart';
import 'package:my_bookly/Features/home/data/repos/home_repo_implementation.dart';
import 'package:my_bookly/constent.dart';
import 'package:my_bookly/core/utils/app_route.dart';
import 'package:my_bookly/core/utils/service_locator.dart';
import 'Features/home/Presentation/views/manager/newest_books_cubit/newest_books_cubit.dart';

void main(List<String> args) {
  setUp();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => FeaturedBooksCubit(getIt.get<HomeRepoImpl>())
              ..fetchFeaturedBooks(),
          ),
          BlocProvider(
              create: (context) => NewestBooksCubit(getIt.get<HomeRepoImpl>())
                ..fetchNewestBooks())
        ],
        child: MaterialApp.router(
          routerConfig: AppRoute.router,
          debugShowCheckedModeBanner: false,
          theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: KMainColor,
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
          ),
        ));
  }
}
