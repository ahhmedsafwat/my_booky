import 'package:flutter/material.dart';
import 'package:my_bookly/Features/home/Presentation/views/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeViewBody(),
    );
  }
}
