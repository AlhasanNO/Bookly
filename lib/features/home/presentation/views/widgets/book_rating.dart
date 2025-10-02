import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:bookly_app/core/utils/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key, required this.count, required this.rating});

  final int count;
  final double rating;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          size: 14,
          color: Color(0xffFFDD4F),
        ),
        const SizedBox(width: 6.3),
        Text(rating.toString(), style: Styles.textStyle16),
        const SizedBox(width: 5),
        Text(
          '($count)',
          style: Styles.textStyle14.copyWith(
            fontWeight: FontWeight.w600,
            color: Colors.white.withAlpha(127),
          ),
        ),
      ],
    );
  }
}
