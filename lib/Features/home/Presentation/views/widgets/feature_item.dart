import 'dart:ffi';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:my_bookly/core/utils/assets.dart';

class FeaturedListViewItem extends StatelessWidget {
  const FeaturedListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.red,
          ),
          child: Image.asset(
            LocAssets.testImage,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
