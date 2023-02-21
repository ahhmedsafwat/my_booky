import 'package:flutter/material.dart';
import 'package:my_bookly/Features/home/Presentation/views/view_model/widgets/feature_item.dart';

class FeatureBookLIstView extends StatelessWidget {
  const FeatureBookLIstView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: FeaturedListViewItem(),
        ),
      ),
    );
  }
}
