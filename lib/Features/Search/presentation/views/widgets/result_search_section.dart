import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/shimmer_newest_books.dart';
import '../../manager/search_books_cubit/search_books_cubit.dart';
import 'result_search_list_view.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class ResultSearchSection extends StatelessWidget {
  const ResultSearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBooksCubit, SearchBooksState>(
      builder: (context, state) {
        if (state is SearchBooksSuccess) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Result Search', style: Styles.textStyle18),
                const SizedBox(height: 20),
                ResultSearchListView(books: state.books),
              ],
            ),
          );
        } else if (state is SearchBooksFailure) {
          return ErrorWidget(state.errMessage);
        } else if (state is SearchBooksLoading) {
          return const ShimmerBooks();
        }
        return Container();
      },
    );
  }
}
