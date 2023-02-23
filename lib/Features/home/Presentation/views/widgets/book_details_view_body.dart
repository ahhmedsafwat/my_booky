import 'package:flutter/material.dart';
import 'package:my_bookly/Features/home/Presentation/views/widgets/similar_books_details.dart';
import 'book_details_section.dart';
import 'custom_details_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: [
      SliverFillRemaining(
        hasScrollBody: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            children: const [
              CustomDetailsAppBar(),
              BookDetailsSection(),
              Expanded(
                child: SizedBox(
                  height: 50,
                ),
              ),
              SimilarBooksSections(),
              SizedBox(
                height: 40,
              )
            ],
          ),
        ),
      )
    ]);
  }
}
