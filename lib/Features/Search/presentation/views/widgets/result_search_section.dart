import 'package:bookly_app/Features/Search/presentation/views/widgets/result_search_list_view.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class ResultSearchSection extends StatelessWidget {
  const ResultSearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Result Search', style: Styles.textStyle18),
          SizedBox(height: 20),
          ResultSearchListView(),
        ],
      ),
    );
  }
}
