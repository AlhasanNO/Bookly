import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import 'package:bookly_app/core/models/book/book.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';

part 'featured_books_states.dart';

class FeaturedBooksCubit extends Cubit<FeaturedBooksState> {
  FeaturedBooksCubit(this._homeRepo) : super(FeaturedBooksInitial());

  final HomeRepo _homeRepo;

  Future<void> fetchFeaturedBooks() async {
    emit(FeaturedBooksLoading());
    final result = await _homeRepo.fetchFeaturedBooks();

    result.fold(
      (failure) {
        emit(FeaturedBooksFailure(failure.errorMessage));
      },
      (books) {
        emit(FeaturedBooksSuccess(books));
      },
    );
  }
}
