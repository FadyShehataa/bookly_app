import 'package:bookly_app/core/utils/assets_data.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.network(AssetsData.logo, height: 18,),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search_rounded,),
          )
        ],
      ),
    );
  }
}
