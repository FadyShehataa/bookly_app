import 'package:bookly_app/core/utils/assets_data.dart';
import 'package:flutter/material.dart';

import 'custom_book_image.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.12,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) => const Padding(
          padding: EdgeInsets.only(right: 10),
          child: CustomBookImage(
            imageUrl: AssetsData.logo,
          ),
        ),
      ),
    );
  }
}
