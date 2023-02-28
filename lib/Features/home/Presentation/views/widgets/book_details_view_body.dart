import 'package:flutter/material.dart';
import 'package:my_bookly/Features/home/Presentation/views/widgets/similar_books_details.dart';
import 'package:my_bookly/Features/home/data/models/book_model/book_model.dart';
import 'book_details_section.dart';
import 'custom_details_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(physics: const BouncingScrollPhysics(), slivers: [
      SliverFillRemaining(
        hasScrollBody: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            children: [
              const CustomDetailsAppBar(),
              BookDetailsSection(bookModel: bookModel),
              const Expanded(
                child: SizedBox(
                  height: 50,
                ),
              ),
              const SimilarBooksSections(),
              const SizedBox(
                height: 40,
              )
            ],
          ),
        ),
      )
    ]);
  }
}
