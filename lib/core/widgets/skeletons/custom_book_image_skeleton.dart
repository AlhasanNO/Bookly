import 'package:flutter/material.dart';

import 'package:skeletonizer/skeletonizer.dart';

class CustomBookImageSkeleton extends StatefulWidget {
  const CustomBookImageSkeleton({super.key});

  @override
  State<CustomBookImageSkeleton> createState() =>
      _CustomBookImageSkeletonState();
}

class _CustomBookImageSkeletonState extends State<CustomBookImageSkeleton> {
  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        child: AspectRatio(
          aspectRatio: 0.625,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey[800],
              borderRadius: BorderRadius.circular(16.0),
            ),
          ),
        ),
      ),
    );
  }
}
