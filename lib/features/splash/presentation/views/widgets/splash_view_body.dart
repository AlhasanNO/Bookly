import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

import 'package:bookly_app/features/splash/presentation/views/widgets/sliding_text.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/assets.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _slidingAnimation;

  @override
  void initState() {
    super.initState();
    startSlidingAnimation();
    scheduleHomeNavigation();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void startSlidingAnimation() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    _slidingAnimation = Tween<Offset>(
      begin: const Offset(0.0, 5.0),
      end: Offset.zero,
    ).animate(_animationController);

    _animationController.forward();
  }

  void scheduleHomeNavigation() {
    Future.delayed(const Duration(seconds: 2), () {
      if (!context.mounted) {
        return;
      }

      GoRouter.of(context).push(AppRouter.kHomeView);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(Assets.logo),
        const SizedBox(height: 5.0),
        SlidingText(slidingAnimation: _slidingAnimation),
      ],
    );
  }
}
