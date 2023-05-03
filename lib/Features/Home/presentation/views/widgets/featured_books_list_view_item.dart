import 'package:bookly_app/core/utils/assets_data.dart';
import 'package:flutter/material.dart';

class FeaturedBooksListViewItem extends StatelessWidget {
  const FeaturedBooksListViewItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.red,
          image: const DecorationImage(
            // fit: BoxFit.fill,
            image: NetworkImage(AssetsData.testImage),
          ),
        ),
      ),
    );
  }
}
