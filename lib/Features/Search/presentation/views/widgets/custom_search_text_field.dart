import 'package:bookly_app/Features/Search/presentation/manager/search_books_cubit/search_books_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/my_colors.dart';
import 'package:flutter/material.dart';

class CustomSearchTextField extends StatelessWidget {
  const CustomSearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: MyColors.myWhite,
      decoration: InputDecoration(
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(),
        label: const Text(
          'Search',
          style: TextStyle(color: MyColors.myWhite),
        ),
        suffixIcon: const Icon(
          Icons.search,
          color: MyColors.myWhite,
        ),
        prefixIcon: IconButton(
          onPressed: () {
            GoRouter.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back,
            color: MyColors.myWhite,
          ),
        ),
      ),
      onSubmitted: (String search) {
        BlocProvider.of<SearchBooksCubit>(context)
            .fetchSearchBooks(search: search);
      },
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return const OutlineInputBorder(
      borderSide: BorderSide(color: MyColors.myWhite),
    );
  }
}
