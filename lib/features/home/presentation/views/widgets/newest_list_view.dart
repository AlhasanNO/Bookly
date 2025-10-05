import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:bookly_app/features/home/presentation/cubits/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly_app/core/widgets/skeletons/book_list_view_item_skeleton.dart';
import 'package:bookly_app/core/widgets/book_list_view_item.dart';
import 'package:bookly_app/core/widgets/error_banner.dart';

class NewestListView extends StatelessWidget {
  const NewestListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                return BookListViewItem(book: state.books[index]);
              }, childCount: state.books.length),
            ),
          );
        } else if (state is NewestBooksFailure) {
          return SliverToBoxAdapter(
            child: ErrorBanner(errorMessage: state.errorMessage),
          );
        } else {
          return SliverToBoxAdapter(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              itemCount: 5,
              itemBuilder: (context, index) {
                return const BookListViewItemSkeleton();
              },
            ),
          );
        }
      },
    );
  }
}
