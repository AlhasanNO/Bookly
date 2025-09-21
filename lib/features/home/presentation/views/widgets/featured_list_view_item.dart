import 'package:flutter/material.dart';

import 'package:bookly_app/core/assets.dart';

class FeaturedListViewItem extends StatelessWidget {
  const FeaturedListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 0.625,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.0),
          // image: const DecorationImage(image: AssetImage(Assets.testImage)),
        ),
      ),
    );
  }
}
