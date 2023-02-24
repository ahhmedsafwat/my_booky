import 'package:flutter/material.dart';

import '../../../../../core/widgets/cutom_button.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: const <Widget>[
          Expanded(
              child: CustomButton(
            buttonText: '19.99€',
            backGroundColor: Colors.white,
            textColor: Colors.black,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16), bottomLeft: Radius.circular(16)),
          )),
          Expanded(
              child: CustomButton(
            buttonText: 'Free Preview',
            backGroundColor: Color(0xffef8262),
            textColor: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16)),
            fontSize: 16,
          ))
        ],
      ),
    );
  }
}
