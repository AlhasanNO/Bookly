part of 'newest_books_cubit.dart';

@immutable
sealed class NewestBooksState {
  const NewestBooksState();
}

final class NewestBooksInitial extends NewestBooksState {}

final class NewestBooksLoading extends NewestBooksState {}

final class NewestBooksSuccess extends NewestBooksState {
  const NewestBooksSuccess(this.books);

  final List<Book> books;
}

final class NewestBooksFailure extends NewestBooksState {
  const NewestBooksFailure(this.errorMessage);

  final String errorMessage;
}
