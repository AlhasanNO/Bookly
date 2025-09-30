import 'package:flutter/material.dart';

import 'package:bookly_app/core/utils/assets.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: AspectRatio(
        aspectRatio: 0.625,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(15.0),
            image: const DecorationImage(image: AssetImage(Assets.testImage)),
          ),
        ),
      ),
    );
  }
}
