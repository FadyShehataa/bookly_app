import 'package:flutter/material.dart';

import 'newest_books_section.dart';
import 'home_app_bar.dart';
import 'featured_books_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomeAppBar(),
              FeaturedBooksListView(),
              SizedBox(height: 50),
              NewestBooksSection()
            ],
          ),
        ),
      ],
    );
  }
}
