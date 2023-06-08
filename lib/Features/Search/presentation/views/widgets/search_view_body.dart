import 'package:bookly_app/Features/Search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:bookly_app/Features/Search/presentation/views/widgets/result_search_section.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 8),
            child: CustomSearchTextField(),
          ),
          SizedBox(height: 30),
          ResultSearchSection()
        ],
      ),
    );
  }
}
