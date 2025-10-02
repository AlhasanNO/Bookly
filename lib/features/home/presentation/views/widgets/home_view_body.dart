import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:bookly_app/features/home/presentation/cubits/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/cubits/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_home_app_bar.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/featured_list_view.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:bookly_app/core/utils/styles.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => FeaturedBooksCubit(getIt.get<HomeRepoImpl>()),
          ),
          BlocProvider(
            create: (context) => NewestBooksCubit(getIt.get<HomeRepoImpl>()),
          ),
        ],
        child: const CustomScrollView(
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
                    padding: EdgeInsetsGeometry.symmetric(horizontal: 30.0),
                    child: Text('Best Seller', style: Styles.textStyle18),
                  ),
                  SizedBox(height: 20.0),
                ],
              ),
            ),
            SliverFillRemaining(child: BestSellerListView()),
          ],
        ),
      ),
    );
  }
}
