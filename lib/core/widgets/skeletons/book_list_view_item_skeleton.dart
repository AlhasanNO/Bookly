import 'package:flutter/material.dart';

import 'package:skeletonizer/skeletonizer.dart';

import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/core/utils/styles.dart';

class BookListViewItemSkeleton extends StatefulWidget {
  const BookListViewItemSkeleton({super.key});

  @override
  State<BookListViewItemSkeleton> createState() =>
      _BookListViewItemSkeletonState();
}

class _BookListViewItemSkeletonState extends State<BookListViewItemSkeleton> {
  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      enabled: true,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Row(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.15,
              child: AspectRatio(
                aspectRatio: 0.625,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[800],
                    borderRadius: BorderRadius.circular(7.5),
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
                    child: const Text(
                      'The Jungle Book',
                      style: TextStyle(fontSize: 20.0),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(height: 3.0),
                  const Text('Unknown Author!', style: Styles.textStyle14),
                  const SizedBox(height: 3.0),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Freeee',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 6.3),
                      BookRating(count: 239, rating: 4.3),
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
