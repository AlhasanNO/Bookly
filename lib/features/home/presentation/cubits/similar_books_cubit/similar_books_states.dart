part of 'similar_books_cubit.dart';

@immutable
sealed class SimilarBooksState {
  const SimilarBooksState();
}

final class SimilarBooksInitial extends SimilarBooksState {}

final class SimilarBooksLoading extends SimilarBooksState {}

final class SimilarBooksSuccess extends SimilarBooksState {
  const SimilarBooksSuccess(this.books);

  final List<Book> books;
}

final class SimilarBooksFailure extends SimilarBooksState {
  const SimilarBooksFailure(this.errorMessage);

  final String errorMessage;
}
