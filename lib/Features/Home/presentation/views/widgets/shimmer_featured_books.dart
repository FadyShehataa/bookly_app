import '../../../../../core/utils/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import 'shimmer_featured_books_list_view_item.dart';

class ShimmerFeaturedBooks extends StatelessWidget {
  const ShimmerFeaturedBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: MyColors.myDarkGrey,
      highlightColor: MyColors.myLightGrey,
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.3,
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) => const Padding(
            padding: EdgeInsets.only(right: 8),
            child: ShimmerFeaturedBooksListViewItem(),
          ),
        ),
      ),
    );
  }
}
