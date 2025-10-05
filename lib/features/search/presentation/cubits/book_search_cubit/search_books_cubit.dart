import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import 'package:bookly_app/features/search/data/repos/search_repo.dart';
import 'package:bookly_app/core/models/book/book.dart';

part 'search_books_states.dart';

class SearchBooksCubit extends Cubit<SearchBooksState> {
  SearchBooksCubit(this._searchRepo) : super(SearchBooksInitial());

  final SearchRepo _searchRepo;

  Future<void> fetchBooksByQuery(String query) async {
    emit(SearchBooksLoading());
    final result = await _searchRepo.fetchBooksByQuery(query);

    result.fold(
      (failure) {
        emit(SearchBooksFailure(failure.errorMessage));
      },
      (books) {
        emit(SearchBooksSuccess(books));
      },
    );
  }
}
