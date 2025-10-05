import 'package:flutter/material.dart';

import 'package:bookly_app/features/search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/search_result_list_view.dart';
import 'package:bookly_app/core/utils/styles.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: CustomSearchTextField(),
            ),
            Text('Search Result', style: Styles.textStyle18),
            SizedBox(height: 16.0),
            SearchResultListView(),
          ],
        ),
      ),
    );
  }
}
