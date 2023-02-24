import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:my_bookly/core/utils/app_route.dart';
import 'package:my_bookly/core/utils/assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
      child: Row(
        children: [
          Image.asset(
            LocAssets.logo,
            height: 18,
          ),
          const Spacer(),
          IconButton(
            alignment: Alignment.bottomCenter,
            onPressed: () {
              GoRouter.of(context).push(AppRoute.searchView);
            },
            icon: const Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 22,
            ),
          )
        ],
      ),
    );
  }
}
