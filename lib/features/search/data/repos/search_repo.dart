import 'package:dartz/dartz.dart';

import 'package:bookly_app/core/models/book/book.dart';
import 'package:bookly_app/core/errors/failures.dart';

abstract class SearchRepo {
  Future<Either<Failure, List<Book>>> fetchBooksByQuery(String query);
}
