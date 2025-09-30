import 'package:go_router/go_router.dart';

import 'package:bookly_app/features/home/presentation/views/book_details_view.dart';
import 'package:bookly_app/features/splash/presentation/views/splash_view.dart';
import 'package:bookly_app/features/search/presentation/view/search_view.dart';
import 'package:bookly_app/features/home/presentation/views/home_view.dart';

abstract class AppRouter {
  static const homeView = '/home';
  static const bookDetailsView = '/book_details';
  static const searchView = '/search_view';

  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const SplashView()),
      GoRoute(path: '/home', builder: (context, state) => const HomeView()),
      GoRoute(
        path: '/book_details',
        builder: (context, state) => const BookDetailsView(),
      ),
      GoRoute(
        path: '/search_view',
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
