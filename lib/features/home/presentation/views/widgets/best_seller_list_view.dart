import 'package:flutter/material.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_list_view_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: ListView.builder(
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.only(bottom: 12.0),
              child: BestSellerListViewItem(),
            );
          },
        ),
      ),
    );
  }
}
