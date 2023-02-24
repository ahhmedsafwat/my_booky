import 'package:flutter/material.dart';
import 'package:my_bookly/core/utils/style.dart';
import 'custom_search_text_field.dart';
import 'search_result_listview.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: const [
          SizedBox(
            height: 25,
          ),
          CutomSearchTextField(),
          SizedBox(
            height: 25,
          ),
          Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Result',
                style: Style.textStyle18,
              )),
          SizedBox(
            height: 10,
          ),
          Expanded(child: SearchResultListView())
        ],
      ),
    );
  }
}
