import 'package:flutter/material.dart';
import 'package:my_bookly/Features/home/Presentation/views/view_model/widgets/custom_app_bar.dart';
import 'package:my_bookly/Features/home/Presentation/views/view_model/widgets/feature_list_view_item.dart';
import 'package:my_bookly/core/utils/assets.dart';
import 'package:my_bookly/core/utils/style.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          CustomAppBar(),
          FeatureBookLIstView(),
          SizedBox(
            height: 50,
          ),
          Text(
            'Best Seller',
            style: Style.titleMedium,
          ),
          BestSellerListViewItem(),
        ],
      ),
    );
  }
}

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 128,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(16)),
              child: Image.asset(
                LocAssets.testImage,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Column(
            children: [],
          )
        ],
      ),
    );
  }
}
