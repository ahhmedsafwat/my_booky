import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_bookly/Features/Splash/Presentation/views/widgets/sliding_text.dart';
import 'package:my_bookly/core/utils/app_route.dart';
import 'package:my_bookly/core/utils/assets.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigatToHomeView();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(LocAssets.logo),
        const SizedBox(
          height: 4,
        ),
        SlidingText(slidingAnimation: slidingAnimation),
      ],
    );
  }

  void initSlidingAnimation() {
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1500));

    slidingAnimation =
        Tween<Offset>(begin: const Offset(-3, 0), end: const Offset(0, 0))
            .animate(_animationController);

    _animationController.forward();
  }

  void navigatToHomeView() {
    Future.delayed(const Duration(seconds: 3), () {
      GoRouter.of(context).push(AppRoute.homeView);
    });
  }
}
