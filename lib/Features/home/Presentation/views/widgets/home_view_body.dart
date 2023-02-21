import 'package:flutter/material.dart';
import 'package:my_bookly/Features/home/Presentation/views/widgets/best_seller_listview_item.dart';
import 'package:my_bookly/Features/home/Presentation/views/widgets/custom_app_bar.dart';
import 'package:my_bookly/Features/home/Presentation/views/widgets/feature_list_view_item.dart';
import 'package:my_bookly/core/utils/style.dart';

import 'best_seller_listview.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              CustomAppBar(),
              FeatureBookLIstView(),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: Text(
                  'Best Seller',
                  style: Style.textStyle18,
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        const SliverFillRemaining(
          fillOverscroll: true,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0),
            child: BestSellerListView(),
          ),
        )
      ],
    );
  }
}
