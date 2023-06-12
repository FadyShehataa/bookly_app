import 'package:bookly_app/Features/Home/presentation/views/widgets/book_details_app_bar.dart';
import 'package:flutter/material.dart';

import '../../../data/models/book_model/book_model.dart';
import 'book_details_section.dart';
import 'similar_books_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.book});
  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const BookDetailsAppBar(),
            const SizedBox(height: 26),
            BookDetailsSection(book: book),
            const SizedBox(height: 50),
            const SimilarBooksSection(),
          ],
        ),
      ),
    );
  }
}
