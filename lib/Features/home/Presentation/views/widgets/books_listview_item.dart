import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_bookly/Features/home/Presentation/views/widgets/book_rating.dart';
import 'package:my_bookly/Features/home/Presentation/views/widgets/custom_book_item.dart';
import 'package:my_bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:my_bookly/constent.dart';
import 'package:my_bookly/core/utils/app_route.dart';
import 'package:my_bookly/core/utils/assets.dart';
import 'package:my_bookly/core/utils/style.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRoute.bookDetailsView);
      },
      child: SizedBox(
        height: 128,
        child: Row(
          children: [
            CustomBookItem(imageUrl: bookModel.volumeInfo.imageLinks.thumbnail),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      bookModel.volumeInfo.title!,
                      style:
                          Style.textStyle20.copyWith(fontFamily: KGtSectraFine),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    bookModel.volumeInfo.authors!.first,
                    style: Style.textStyle14,
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      Text(
                        'Free',
                        style: Style.textStyle20
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      BooksRating(
                        downCount: bookModel.volumeInfo.ratingsCount ?? 0,
                        rating: bookModel.volumeInfo.averageRating ?? 0,
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
