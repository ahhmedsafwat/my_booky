import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_bookly/core/utils/style.dart';

class BooksRating extends StatelessWidget {
  const BooksRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xffffdd4f),
        ),
        const SizedBox(
          width: 6.3,
        ),
        const Text(
          '4.8',
          style: Style.textStyle16,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          '(2590)',
          style: Style.textStyle14.copyWith(color: const Color(0xff707070)),
        )
      ],
    );
  }
}
