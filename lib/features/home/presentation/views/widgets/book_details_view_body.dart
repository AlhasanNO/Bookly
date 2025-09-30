import 'package:flutter/material.dart';

import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_image.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_actions.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/core/utils/styles.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Column(
                children: [
                  const CustomBookDetailsAppBar(),
                  const SizedBox(height: 27.0),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.20,
                    ),
                    child: const CustomBookImage(),
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
                  const BookRating(),
                  const SizedBox(height: 37.0),
                  const BookActions(),
                  const Expanded(child: SizedBox(height: 50.0)),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'You may also like',
                      style: Styles.textStyle14.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  const SimilarBooksListView(),
                  const SizedBox(height: 40.0),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
