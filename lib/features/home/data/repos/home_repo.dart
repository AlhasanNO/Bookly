import 'package:dartz/dartz.dart';

import 'package:bookly_app/core/models/book/book.dart';
import 'package:bookly_app/core/errors/failures.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<Book>>> fetchFeaturedBooks();
  Future<Either<Failure, List<Book>>> fetchNewestBooks();
  Future<Either<Failure, List<Book>>> fetchSimilarBooks({
    required String category,
  });
}
