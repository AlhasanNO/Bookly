import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

import 'package:bookly_app/core/functions/show_custom_snack_bar.dart';

Future<void> launchCustomUrl(BuildContext context, String url) async {
  final uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    await launchUrl(uri);
  } else if (!context.mounted) {
    return;
  } else {
    showCustomSnackBar(context, 'Can\'t open link');
  }
}
