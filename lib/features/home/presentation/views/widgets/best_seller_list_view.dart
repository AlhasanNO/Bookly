import 'package:flutter/material.dart';

import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_list_view_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      itemBuilder: (context, index) {
        return const BookListViewItem();
      },
    );
  }
}
