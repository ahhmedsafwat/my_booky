import 'package:flutter/material.dart';
import 'package:my_bookly/Features/home/Presentation/views/widgets/similer_books_listview.dart';

import '../../../../../core/utils/style.dart';

class SimilarBooksSections extends StatelessWidget {
  const SimilarBooksSections({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'You can also like',
          style: Style.textStyle14.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const BooksListView(),
      ],
    );
  }
}
