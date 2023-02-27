import 'package:flutter/material.dart';
import 'package:my_bookly/core/utils/style.dart';

class CustomError extends StatelessWidget {
  const CustomError({super.key, required this.errMessage});

  final String errMessage;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        errMessage,
        style: Style.textStyle18,
        textAlign: TextAlign.center,
      ),
    );
  }
}
