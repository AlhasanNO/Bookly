import 'package:flutter/material.dart';

import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_home_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured_list_view.dart';
import 'package:bookly_app/core/utils/styles.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomHomeAppBar(),
                FeaturedListView(),
                SizedBox(height: 60.0),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.0),
                  child: Text('Best Seller', style: Styles.textStyle18),
                ),
                SizedBox(height: 20.0),
              ],
            ),
          ),
          SliverFillRemaining(child: BestSellerListView()),
        ],
      ),
    );
  }
}
