import 'package:flutter/material.dart';
import 'package:my_bookly/Features/home/Presentation/views/view_model/widgets/custom_app_bar.dart';
import 'package:my_bookly/Features/home/Presentation/views/view_model/widgets/feature_list_view_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        CustomAppBar(),
        FeatureBookLIstView(),
      ],
    );
  }
}
