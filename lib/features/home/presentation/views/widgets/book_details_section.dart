import 'package:flutter/material.dart';

import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_actions.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/core/utils/styles.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.20,
          ),
          child: const CustomBookImage(imageUrl: ''),
        ),
        const SizedBox(height: 43.0),
        const Text('The Jungle Book', style: Styles.textStyle30),
        const SizedBox(height: 6.0),
        Text(
          'Rudyard Kipling',
          style: Styles.textStyle18.copyWith(
            fontStyle: FontStyle.italic,
            color: Colors.white.withAlpha(178),
          ),
        ),
        const SizedBox(height: 16.0),
        const BookRating(count: 306, rating: 4.6),
        const SizedBox(height: 37.0),
        const BookActions(),
      ],
    );
  }
}
