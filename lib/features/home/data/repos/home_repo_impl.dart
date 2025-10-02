import 'package:dartz/dartz.dart';

import 'package:bookly_app/features/home/data/models/book/book.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/core/errors/failures.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  HomeRepoImpl(this._apiService);

  final ApiService _apiService;

  @override
  Future<Either<Failure, List<Book>>> fetchNewestBooks() async {
    try {
      final data = await _apiService.get(
        endPoint:
            'volumes?q=subject:programming&Filtering=free-ebooks&Sorting=newest',
      );

      final List<Book> books = [];
      for (final item in data['items']) {
        books.add(Book.fromJson(item));
      }

      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFalure.fromDioException(e));
      }

      return left(ServerFalure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Book>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}
