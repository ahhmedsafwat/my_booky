import 'package:flutter/material.dart';
import '../../../../../core/utils/style.dart';
import 'book_action.dart';
import 'book_rating.dart';
import 'custom_book_item.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child: const CustomBookItem(
            imageUrl:
                'http://bookcoverarchive.com/wp-content/uploads/2009/01/the_procedure.large_.jpg.png',
          ),
        ),
        const SizedBox(
          height: 40,
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
    );
  }
}
