part of 'search_books_cubit.dart';

@immutable
sealed class SearchBooksState {
  const SearchBooksState();
}

final class SearchBooksInitial extends SearchBooksState {}

final class SearchBooksLoading extends SearchBooksState {}

final class SearchBooksSuccess extends SearchBooksState {
  const SearchBooksSuccess(this.books);

  final List<Book> books;
}

final class SearchBooksFailure extends SearchBooksState {
  const SearchBooksFailure(this.errorMessage);

  final String errorMessage;
}
