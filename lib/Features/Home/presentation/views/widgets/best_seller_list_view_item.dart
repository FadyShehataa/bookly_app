import 'package:flutter/material.dart';

import '../../../../../core/utils/assets_data.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          // image
          // space
          // column
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.red,
                image: const DecorationImage(
                  // fit: BoxFit.fill,
                  image: NetworkImage(AssetsData.testImage),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
