import 'package:flutter/material.dart';

import '../../../home/Presentation/views/widgets/best_seller_listview_item.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      // physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          child: BookListViewItem(),
        );
      },
    );
  }
}
