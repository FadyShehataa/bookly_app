import 'package:bookly_app/core/models/book_model/book_model.dart';

import '../../../../../core/widgets/books_list_view_item.dart';
import 'package:flutter/material.dart';

class ResultSearchListView extends StatelessWidget {
  const ResultSearchListView({super.key, required this.books});
  final List<BookModel> books;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: books.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: BooksListViewItem(
            book: books[index],
          ),
        );
      },
    );
  }
}
