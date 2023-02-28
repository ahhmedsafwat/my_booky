import 'package:flutter/material.dart';
import 'package:my_bookly/Features/home/data/models/book_model/book_model.dart';
import '../../../../../core/utils/style.dart';
import 'book_action.dart';
import 'book_rating.dart';
import 'custom_book_item.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .2),
          child: CustomBookItem(
            imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail ?? '',
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        Text(
          '${bookModel.volumeInfo.title}',
          style: Style.textStyle30,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: .7,
          child: Text(
            bookModel.volumeInfo.authors?.first ?? 'Unknown',
            style: Style.textStyle18.copyWith(
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        BooksRating(
          mainAxisAlignment: MainAxisAlignment.center,
          rating: bookModel.volumeInfo.averageRating ?? 0,
          downCount: bookModel.volumeInfo.ratingsCount ?? 0,
        ),
        const SizedBox(height: 25),
        BookAction(bookModel: bookModel),
      ],
    );
  }
}
