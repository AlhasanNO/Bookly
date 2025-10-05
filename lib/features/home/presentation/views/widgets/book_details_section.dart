import 'package:flutter/material.dart';

import 'package:bookly_app/features/home/presentation/views/widgets/book_actions.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/core/widgets/custom_book_image.dart';
import 'package:bookly_app/core/models/book/book.dart';
import 'package:bookly_app/core/utils/styles.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.book});

  final Book book;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.20,
          ),
          child: CustomBookImage(book: book, canOpen: false),
        ),
        const SizedBox(height: 43.0),
        Text(
          book.volumeInfo?.title ?? 'No Title!',
          style: Styles.textStyle30,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 6.0),
        Text(
          book.volumeInfo?.authors?[0] ?? 'Unknown Author!',
          style: Styles.textStyle18.copyWith(
            fontStyle: FontStyle.italic,
            color: Colors.white.withAlpha(178),
          ),
        ),
        const SizedBox(height: 16.0),
        const BookRating(count: 306, rating: 4.6),
        const SizedBox(height: 37.0),
        BookActions(book: book),
      ],
    );
  }
}
