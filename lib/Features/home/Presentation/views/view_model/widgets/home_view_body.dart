import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_bookly/Features/home/Presentation/views/view_model/widgets/custom_app_bar.dart';
import 'package:my_bookly/Features/home/Presentation/views/view_model/widgets/cutom_list_view_item.dart';
import 'package:my_bookly/core/utils/assets.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [CustomAppBar(), CustomListViewItem()],
    );
  }
}
