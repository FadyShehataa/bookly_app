import 'package:bookly_app/Features/Home/presentation/views/widgets/shimmer_newest_books.dart';
import 'package:bookly_app/Features/Search/presentation/manager/search_books_cubit/search_books_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../Home/presentation/views/widgets/newest_books_list_view_item.dart';
import 'package:flutter/material.dart';

class ResultSearchListView extends StatelessWidget {
  const ResultSearchListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBooksCubit, SearchBooksState>(
      builder: (context, state) {
        if (state is SearchBooksSuccess) {
          return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: NewestBooksListViewItem(
                  book: state.books[index],
                ),
              );
            },
          );
        } else if (state is SearchBooksFailure) {
          return ErrorWidget(state.errMessage);
        } else if (state is SearchBooksLoading) {
          return const ShimmerNewestBooks();
        }
        return Container();
      },
    );
  }
}
