import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CutomSearchTextField extends StatelessWidget {
  const CutomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: TextField(
        decoration: InputDecoration(
            enabledBorder: buildOutLineInputBorder(),
            border: buildOutLineInputBorder(),
            focusedBorder: buildOutLineInputBorder(),
            hintText: 'Search',
            suffix: Opacity(
              opacity: 0.7,
              child: IconButton(
                icon: const Icon(
                  FontAwesomeIcons.magnifyingGlass,
                  size: 18,
                ),
                onPressed: () {},
              ),
            )),
      ),
    );
  }

  OutlineInputBorder buildOutLineInputBorder() {
    return OutlineInputBorder(
      borderSide: const BorderSide(
        color: Colors.white,
      ),
      borderRadius: BorderRadius.circular(12),
    );
  }
}
