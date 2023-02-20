import 'package:flutter/material.dart';
import 'package:my_bookly/Features/Splash/Presentation/views/widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const SplashViewBody(),
    );
  }
}
