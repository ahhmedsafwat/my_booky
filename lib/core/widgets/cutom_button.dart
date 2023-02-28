import 'package:flutter/material.dart';
import 'package:my_bookly/core/utils/style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.backGroundColor,
    required this.textColor,
    this.borderRadius,
    required this.buttonText,
    this.fontSize,
    this.onPressed,
  });
  final Color backGroundColor;
  final Color textColor;
  final BorderRadius? borderRadius;
  final String buttonText;
  final double? fontSize;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: borderRadius ?? BorderRadius.circular(16),
              ),
              backgroundColor: backGroundColor),
          child: Text(
            buttonText,
            style: Style.textStyle18.copyWith(
              color: textColor,
              fontWeight: FontWeight.w900,
              fontSize: fontSize,
            ),
          )),
    );
  }
}
