import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';
import 'best_seller_list_view.dart';

class BestSellerBooksSection extends StatelessWidget {
  const BestSellerBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 30),
          child: Text('Best Seller', style: Styles.textStyle18),
        ),
        SizedBox(height: 20),
        BestSellerListView(),
      ],
    );
  }
}
