import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_bookly/Features/home/Presentation/views/manager/similar_books_cubit/similar_books_cubit.dart';
import 'package:my_bookly/Features/home/Presentation/views/widgets/custom_error.dart';
import 'package:my_bookly/Features/home/Presentation/views/widgets/custom_loading_indecator.dart';

import 'custom_book_item.dart';

class BooksListView extends StatelessWidget {
  const BooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, similarBooksState>(
      builder: (context, state) {
        if (state is similarBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .15,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5),
                  child: CustomBookItem(
                    imageUrl:
                        'http://bookcoverarchive.com/wp-content/uploads/2009/01/the_procedure.large_.jpg.png',
                  ),
                );
              },
            ),
          );
        } else if (state is similarBooksFailure) {
          return CustomError(errMessage: state.errMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
