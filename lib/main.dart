import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_bookly/Features/Splash/Presentation/splash_view.dart';

void main(List<String> args) {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: SplashView(),
    );
  }
}
