import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'newest_books_list_view.dart';

class NewestBooksSection extends StatelessWidget {
  const NewestBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 30),
          child: Text('Newest Books', style: Styles.textStyle18),
        ),
        SizedBox(height: 20),
        NewestBooksListView(),
      ],
    );
  }
}
