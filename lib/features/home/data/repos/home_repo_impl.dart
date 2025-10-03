import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'package:bookly_app/features/home/data/models/book/book.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/core/errors/failures.dart';

class HomeRepoImpl implements HomeRepo {
  HomeRepoImpl(this._apiService);

  final ApiService _apiService;

  @override
  Future<Either<Failure, List<Book>>> fetchNewestBooks() async {
    try {
      final data = await _apiService.get(
        endPoint:
            'volumes?q=subject:engineering&filtering=free-ebooks&sorting=newest',
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
  Future<Either<Failure, List<Book>>> fetchFeaturedBooks() async {
    try {
      final data = await _apiService.get(
        endPoint: 'volumes?q=subject:computer&filtering=free-ebooks',
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
  Future<Either<Failure, List<Book>>> fetchSimilarBooks({
    required String category,
  }) async {
    try {
      final data = await _apiService.get(
        endPoint:
            'volumes?q=subject:computer&filtering=free-ebooks&forting=relevance',
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
}
