import 'package:flutter/material.dart';

import 'package:bookly_app/core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.onPressed,
    required this.backgroundColor,
    required this.foregroundColor,
    this.borderRadius,
    required this.text,
  });

  final void Function()? onPressed;
  final Color backgroundColor;
  final Color foregroundColor;
  final BorderRadius? borderRadius;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48.0,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          foregroundColor: foregroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius ?? BorderRadius.circular(16.0),
          ),
        ),
        child: Text(
          text,
          style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w900),
        ),
      ),
    );
  }
}
