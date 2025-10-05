import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:skeletonizer/skeletonizer.dart';

import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/constants.dart';

void main() {
  setupServiceLocator();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        colorScheme: kColorScheme,
        brightness: Brightness.dark,
        extensions: const [SkeletonizerConfigData.dark()],
        textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
      ),
    );
  }
}
