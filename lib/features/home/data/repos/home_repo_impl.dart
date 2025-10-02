import 'package:dartz/dartz.dart';

import 'package:bookly_app/features/home/data/models/book/book.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:bookly_app/core/errors/failures.dart';

class HomeRepoImpl implements HomeRepo {
  @override
  Future<Either<Failure, List<Book>>> fetchBestSellerBooks() {
    // TODO: implement fetchBestSellerBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<Book>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}
