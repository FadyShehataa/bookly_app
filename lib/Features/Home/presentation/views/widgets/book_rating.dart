import 'package:flutter/material.dart';
import '../../../../../core/utils/my_colors.dart';
import '../../../../../core/utils/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating(
      {super.key, required this.averageRating, required this.ratingsCount});
  final double averageRating;
  final int ratingsCount;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.star_rate_rounded,
          color: MyColors.myYellow,
          size: 22,
        ),
        const SizedBox(width: 6.3),
        Text(
          '$averageRating',
          style: Styles.textStyle16,
        ),
        const SizedBox(width: 5),
        Text(
          '($ratingsCount)',
          style: Styles.textStyle14.copyWith(
            color: MyColors.myWhite.withOpacity(0.5),
          ),
        ),
      ],
    );
  }
}
