import 'package:bookly_app/core/utils/my_colors.dart';
import 'package:bookly_app/core/widgets/shimmer_newest_books_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerNewestBooks extends StatelessWidget {
  const ShimmerNewestBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: MyColors.myDarkGrey,
      highlightColor: MyColors.myLightGrey,
      child: Padding(
        padding: const EdgeInsets.only(left: 30, right: 47),
        child: ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          itemCount: 5,
          itemBuilder: (context, index) {
            return const ShimmerNewestBooksListViewItem();
          },
        ),
      ),
    );
  }
}
