import '../../../../../core/utils/my_colors.dart';
import 'package:flutter/material.dart';

class ShimmerNewestBooksListViewItem extends StatelessWidget {
  const ShimmerNewestBooksListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            // image
            AspectRatio(
              aspectRatio: 2.6 / 4.1,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: MyColors.myWhite,
                ),
              ),
            ),
            const SizedBox(width: 30),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // title
                  Container(
                    height: 40,
                    width: double.infinity,
                    color: MyColors.myWhite,
                  ),
                  const SizedBox(height: 5),

                  // author
                  Container(
                    height: 20,
                    width: double.infinity,
                    color: MyColors.myWhite,
                  ),
                  const SizedBox(height: 5),

                  // rating
                  Row(
                    children: [
                      Container(
                        height: 20,
                        width: 50,
                        color: MyColors.myWhite,
                      ),
                      const Spacer(),
                      Container(
                        height: 20,
                        width: 50,
                        color: MyColors.myWhite,
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
