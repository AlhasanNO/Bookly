import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import 'package:bookly_app/features/home/data/models/book/book.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';

part 'newest_books_states.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this._homeRepo) : super(NewestBooksInitial());

  final HomeRepo _homeRepo;

  Future<void> fetchNewestBooks() async {
    emit(NewestBooksLoading());
    final result = await _homeRepo.fetchNewestBooks();

    result.fold(
      (failure) {
        emit(NewestBooksFailure(failure.errorMessage));
      },
      (books) {
        emit(NewestBooksSuccess(books));
      },
    );
  }
}
