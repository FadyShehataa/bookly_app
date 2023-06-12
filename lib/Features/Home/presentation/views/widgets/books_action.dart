import 'package:bookly_app/Features/Home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/functions/custom_launch_url.dart';
import '../../../../../core/utils/my_colors.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/custom_button.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 7),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              backgroundColor: MyColors.myWhite,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(16),
                topLeft: Radius.circular(16),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Free',
                    style: Styles.textStyle18.copyWith(
                      fontWeight: FontWeight.w700,
                      color: MyColors.myBlack,
                    ),
                  ),
                ],
              ),
              onPressed: () {},
            ),
          ),
          Expanded(
            child: CustomButton(
              backgroundColor: MyColors.myOrange,
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
              child: Text(
                'Free preview',
                style: Styles.textStyle16.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () async {
                await customLaunchUrl(context, book.volumeInfo!.previewLink!);
              },
            ),
          )
        ],
      ),
    );
  }
}
