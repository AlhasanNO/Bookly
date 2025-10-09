import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'package:bookly_app/features/search/data/repos/search_repo.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/core/models/book/book.dart';
import 'package:bookly_app/core/errors/failures.dart';

class SearchRepoImpl implements SearchRepo {
  SearchRepoImpl(this._apiService);

  final ApiService _apiService;

  @override
  Future<Either<Failure, List<Book>>> fetchBooksByQuery(String query) async {
    try {
      final data = await _apiService.get(
        endPoint: 'volumes?q=subject:$query&filtering=free-ebooks',
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
