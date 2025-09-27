import 'package:flutter/material.dart';

import 'package:bookly_app/core/utils/assets.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.15,
          child: AspectRatio(
            aspectRatio: 0.625,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(7.5),
                image: const DecorationImage(image: AssetImage(Assets.testImage)),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
