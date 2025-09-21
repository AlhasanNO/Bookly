import 'package:flutter/material.dart';

import 'package:bookly_app/features/home/presentation/views/widgets/featured_list_view_item.dart';

class FeaturedListView extends StatelessWidget {
  const FeaturedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.27,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(right: 12.0),
            child: FeaturedListViewItem(),
          );
        },
      ),
    );
  }
}
