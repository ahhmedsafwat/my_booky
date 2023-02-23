import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:my_bookly/Features/home/Presentation/views/widgets/book_rating.dart';
import 'package:my_bookly/constent.dart';
import 'package:my_bookly/core/utils/app_route.dart';
import 'package:my_bookly/core/utils/assets.dart';
import 'package:my_bookly/core/utils/style.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

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
            AspectRatio(
              aspectRatio: 2.5 / 4,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(16)),
                child: Image.asset(
                  LocAssets.testImage,
                  fit: BoxFit.fill,
                ),
              ),
            ),
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
                      'Harry Potter and the Goblet of Fire',
                      style:
                          Style.textStyle20.copyWith(fontFamily: KGtSectraFine),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  const Text(
                    'J.K. Rowling',
                    style: Style.textStyle14,
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Row(
                    children: [
                      Text(
                        '19.99€',
                        style: Style.textStyle20
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      const Spacer(),
                      const BooksRating()
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
