import 'package:flutter/material.dart';

import 'custom_book_item.dart';

class BooksListView extends StatelessWidget {
  const BooksListView({super.key});

  @override
  Widget build(BuildContext context) {
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
  }
}
