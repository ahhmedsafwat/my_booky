import 'package:flutter/material.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    super.key,
    required this.slidingAnimation,
  });

  final Animation<Offset> slidingAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      builder: (context, _) {
        return SlideTransition(
          position: slidingAnimation,
          child: const Text(
            'Read Free Books',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              letterSpacing: 1.5,
              fontWeight: FontWeight.w300,
            ),
          ),
        );
      },
      animation: slidingAnimation,
    );
  }
}
