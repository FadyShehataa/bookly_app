import 'package:bookly_app/Features/Home/presentation/views/widgets/book_details_app_bar.dart';
import 'package:flutter/material.dart';

import 'book_details_section.dart';
import 'similar_books_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          BookDetailsAppBar(),
          SizedBox(height: 26),
          BookDetailsSection(),
          SizedBox(height: 50),
          SimilarBooksSection(),
        ],
      ),
    );
  }
}
