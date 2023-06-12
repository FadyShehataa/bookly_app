import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../../core/utils/my_colors.dart';
import 'shimmer_featured_books_list_view_item.dart';

class ShimmerSimilarBooks extends StatelessWidget {
  const ShimmerSimilarBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: MyColors.myDarkGrey,
      highlightColor: MyColors.myLightGrey,
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.121,
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) => const Padding(
            padding: EdgeInsets.only(right: 8),
            child: ShimmerFeaturedBooksListViewItem(),
          ),
        ),
      ),
    );
  }
}
