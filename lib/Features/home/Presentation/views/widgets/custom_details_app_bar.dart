import 'package:flutter/material.dart';

class CustomDetailsAppBar extends StatelessWidget {
  const CustomDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        IconButton(
          onPressed: null,
          icon: Icon(Icons.close),
        ),
        IconButton(
          onPressed: null,
          icon: Icon(Icons.shopping_cart_outlined),
        )
      ],
    );
  }
}
