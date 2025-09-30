import 'package:flutter/material.dart';

import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:bookly_app/constants.dart';

class BookActions extends StatelessWidget {
  const BookActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              onPressed: () {},
              backgroundColor: Colors.white,
              foregroundColor: kPrimaryColor,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16.0),
                bottomLeft: Radius.circular(16.0),
              ),
              text: '19.99\$',
            ),
          ),
          Expanded(
            child: CustomButton(
              onPressed: () {},
              backgroundColor: const Color(0xffEF8262),
              foregroundColor: Colors.white,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(16.0),
                bottomRight: Radius.circular(16.0),
              ),
              text: 'Free Preview',
            ),
          ),
        ],
      ),
    );
  }
}
