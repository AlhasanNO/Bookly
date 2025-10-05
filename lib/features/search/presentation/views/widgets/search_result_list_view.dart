import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:bookly_app/features/search/presentation/cubits/book_search_cubit/search_books_cubit.dart';
import 'package:bookly_app/core/widgets/skeletons/book_list_view_item_skeleton.dart';
import 'package:bookly_app/core/widgets/book_list_view_item.dart';
import 'package:bookly_app/core/widgets/error_banner.dart';
import 'package:bookly_app/core/utils/styles.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<SearchBooksCubit, SearchBooksState>(
        builder: (context, state) {
          if (state is SearchBooksSuccess) {
            return ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return BookListViewItem(book: state.books[index]);
              },
            );
          } else if (state is SearchBooksFailure) {
            return ErrorBanner(errorMessage: state.errorMessage);
          } else if (state is SearchBooksLoading) {
            return ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: 10,
              itemBuilder: (context, index) {
                return const BookListViewItemSkeleton();
              },
            );
          } else {
            return const Center(
              child: Text('Try search for a book', style: Styles.textStyle18),
            );
          }
        },
      ),
    );
  }
}
