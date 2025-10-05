import 'package:flutter/material.dart';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:go_router/go_router.dart';

import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/core/models/book/book.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:bookly_app/constants.dart';

class NewestListViewItem extends StatelessWidget {
  const NewestListViewItem({super.key, required this.book});

  final Book book;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.bookDetailsView, extra: book);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Row(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.15,
              child: AspectRatio(
                aspectRatio: 0.625,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(7.5),
                  child: CachedNetworkImage(
                    imageUrl: book.volumeInfo!.imageLinks!.thumbnail!,
                    errorWidget: (context, url, error) =>
                        const Icon(Icons.error),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 30.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(
                      book.volumeInfo!.title!,
                      style: Styles.textStyle20.copyWith(
                        fontFamily: kGtSectraFine,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(height: 3.0),
                  Text(book.volumeInfo!.authors![0], style: Styles.textStyle14),
                  const SizedBox(height: 3.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Free',
                        style: Styles.textStyle20.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 6.3),
                      const BookRating(count: 306, rating: 4.6),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
