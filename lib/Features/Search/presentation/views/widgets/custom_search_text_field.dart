import 'package:bookly_app/core/utils/my_colors.dart';
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
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return const OutlineInputBorder(
      borderSide: BorderSide(color: MyColors.myWhite),
    );
  }
}
