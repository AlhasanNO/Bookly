import 'package:flutter/material.dart';

import 'package:bookly_app/core/assets.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: AspectRatio(
        aspectRatio: 0.625,
        child: Container(
          width: 180.0,
          height: 280.0,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15.0),
            // image: const DecorationImage(image: AssetImage(Assets.testImage)),
          ),
        ),
      ),
    );
  }
}
