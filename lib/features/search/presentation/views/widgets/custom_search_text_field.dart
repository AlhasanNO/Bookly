import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:bookly_app/features/search/presentation/cubits/book_search_cubit/search_books_cubit.dart';
import 'package:bookly_app/core/utils/styles.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      textInputAction: TextInputAction.search,
      decoration: InputDecoration(
        enabledBorder: buildInputBorder(),
        focusedBorder: buildInputBorder(),
        hintText: 'Search',
        hintStyle: Styles.textStyle16.copyWith(color: Colors.white),
        suffixIcon: const Icon(
          FontAwesomeIcons.magnifyingGlass,
          color: Colors.white,
          size: 20.0,
        ),
      ),
      onSubmitted: (value) {
        final query = value.trim();
        if (query.isNotEmpty) {
          BlocProvider.of<SearchBooksCubit>(context).fetchBooksByQuery(query);
        }
      },
    );
  }

  OutlineInputBorder buildInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(30.0),
      borderSide: const BorderSide(color: Colors.white),
    );
  }
}
