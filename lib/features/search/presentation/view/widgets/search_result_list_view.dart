import 'package:flutter/material.dart';

import 'package:bookly_app/features/home/presentation/views/widgets/newest_list_view_item.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          // return const BookListViewItem();
        },
      ),
    );
  }
}
