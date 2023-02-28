import 'package:flutter/material.dart';
import 'package:my_bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:my_bookly/core/utils/function/launch_url.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../../core/widgets/cutom_button.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: <Widget>[
          Expanded(
              child: CustomButton(
            onPressed: () async {},
            buttonText: 'Free',
            backGroundColor: Colors.white,
            textColor: Colors.black,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16), bottomLeft: Radius.circular(16)),
          )),
          Expanded(
              child: CustomButton(
            onPressed: () async {
              launchCustomUrl(context, bookModel.volumeInfo.previewLink);
            },
            buttonText: getText(bookModel),
            backGroundColor: const Color(0xffef8262),
            textColor: Colors.white,
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16)),
            fontSize: 16,
          ))
        ],
      ),
    );
  }
}

String getText(BookModel bookModel) {
  if (bookModel.volumeInfo.previewLink == null) {
    return 'Not Avaliavle';
  } else {
    return 'Preview';
  }
}
