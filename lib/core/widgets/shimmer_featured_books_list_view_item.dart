import 'package:bookly_app/core/utils/my_colors.dart';
import 'package:flutter/material.dart';

class ShimmerFeaturedBooksListViewItem extends StatelessWidget {
  const ShimmerFeaturedBooksListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4.1,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: MyColors.myWhite,
        ),
      ),
    );
  }
}
