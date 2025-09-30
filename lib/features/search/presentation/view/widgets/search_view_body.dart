import 'package:bookly_app/features/search/presentation/view/widgets/custom_search_text_field.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(child: Column(children: [CustomSearchTextField()]));
  }
}
