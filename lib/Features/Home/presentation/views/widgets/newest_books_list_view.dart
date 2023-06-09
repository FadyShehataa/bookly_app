import '../../../../../core/widgets/shimmer_newest_books.dart';
import '../../manager/newest_books_cubit/newest_books_cubit.dart';
import '../../../../../core/widgets/books_list_view_item.dart';
import '../../../../../core/widgets/custom_error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class NewestBooksListView extends StatelessWidget {
  const NewestBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccess) {
          return Padding(
            padding: const EdgeInsets.only(left: 30, right: 47),
            child: ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: BooksListViewItem(book: state.books[index]),
                );
              },
            ),
          );
        } else if (state is NewestBooksFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        }
        return const ShimmerBooks();
      },
    );
  }
}
