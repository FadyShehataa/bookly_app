import '../../../../../core/models/book_model/book_model.dart';
import '../../../../Home/presentation/views/widgets/newest_books_list_view_item.dart';
import 'package:flutter/material.dart';

class ResultSearchListView extends StatelessWidget {
  const ResultSearchListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: NewestBooksListViewItem(book: BookModel(),),
        );
      },
    );
  }
}
