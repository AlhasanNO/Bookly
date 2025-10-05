import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import 'package:bookly_app/features/home/presentation/cubits/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/cubits/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly_app/features/search/presentation/cubits/book_search_cubit/search_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/cubits/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/book_details_view.dart';
import 'package:bookly_app/features/splash/presentation/views/splash_view.dart';
import 'package:bookly_app/features/search/presentation/views/search_view.dart';
import 'package:bookly_app/features/search/data/repos/search_repo_impl.dart';
import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:bookly_app/core/models/book/book.dart';

abstract class AppRouter {
  static const splashView = '/';
  static const homeView = '/home';
  static const bookDetailsView = '/book_details';
  static const searchView = '/search_view';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: splashView,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: homeView,
        builder: (context, state) => MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) =>
                  FeaturedBooksCubit(getIt.get<HomeRepoImpl>()),
            ),
            BlocProvider(
              create: (context) => NewestBooksCubit(getIt.get<HomeRepoImpl>()),
            ),
          ],
          child: const HomeView(),
        ),
      ),
      GoRoute(
        path: bookDetailsView,
        builder: (context, state) {
          final book = state.extra;
          return BlocProvider(
            create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImpl>()),
            child: BookDetailsView(book: book as Book),
          );
        },
      ),
      GoRoute(
        path: searchView,
        builder: (context, state) {
          return BlocProvider(
            create: (context) => SearchBooksCubit(getIt.get<SearchRepoImpl>()),
            child: const SearchView(),
          );
        },
      ),
    ],
  );
}
