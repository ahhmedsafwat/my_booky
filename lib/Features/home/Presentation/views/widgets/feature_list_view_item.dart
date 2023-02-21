import 'package:flutter/material.dart';
import 'package:my_bookly/Features/home/Presentation/views/widgets/feature_item.dart';

class FeatureBookLIstView extends StatelessWidget {
  const FeatureBookLIstView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .3,
        child: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => const Padding(
            padding: EdgeInsets.only(right: 16.0),
            child: FeaturedListViewItem(),
          ),
        ),
      ),
    );
  }
}
