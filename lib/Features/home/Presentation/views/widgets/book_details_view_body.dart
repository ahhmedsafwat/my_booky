import 'package:flutter/material.dart';
import 'package:my_bookly/Features/home/Presentation/views/widgets/book_rating.dart';
import 'package:my_bookly/Features/home/Presentation/views/widgets/custom_book_item.dart';
import 'package:my_bookly/constent.dart';
import 'package:my_bookly/core/utils/style.dart';
import 'package:my_bookly/core/widget/cutom_button.dart';
import 'BookAction.dart';
import 'custom_details_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [
          const CustomDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .2),
            child: const CustomBookItem(),
          ),
          const SizedBox(
            height: 43,
          ),
          const Text(
            'The Jungle Book',
            style: Style.textStyle30,
          ),
          const SizedBox(
            height: 6,
          ),
          Opacity(
            opacity: .7,
            child: Text(
              'Rudyard Kipling',
              style: Style.textStyle18.copyWith(
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          const BooksRating(mainAxisAlignment: MainAxisAlignment.center),
          const SizedBox(height: 25),
          const BookAction(),
        ],
      ),
    );
  }
}
