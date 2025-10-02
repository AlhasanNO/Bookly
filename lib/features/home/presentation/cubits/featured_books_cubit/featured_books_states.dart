part of 'featured_books_cubit.dart';

@immutable
sealed class FeaturedBooksState {
  const FeaturedBooksState();
}

final class FeaturedBooksInitial extends FeaturedBooksState {}

final class FeaturedBooksLoading extends FeaturedBooksState {}

final class FeaturedBooksSuccess extends FeaturedBooksState {
  const FeaturedBooksSuccess(this.books);

  final List<Book> books;
}

final class FeaturedBooksFailure extends FeaturedBooksState {
  const FeaturedBooksFailure(this.errorMessage);

  final String errorMessage;
}
