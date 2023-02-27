import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_bookly/Features/home/Presentation/views/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:my_bookly/Features/home/Presentation/views/widgets/books_listview_item.dart';
import 'package:my_bookly/Features/home/Presentation/views/widgets/custom_error.dart';
import 'package:my_bookly/Features/home/Presentation/views/widgets/custom_loading_indecator.dart';

class NewestSellerListView extends StatelessWidget {
  const NewestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: BookListViewItem(
                  bookModel: state.books[index],
                ),
              );
            },
          );
        } else if (state is NewestBooksFailure) {
          return CustomError(errMessage: state.errMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
