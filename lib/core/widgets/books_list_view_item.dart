import '../models/book_model/book_model.dart';
import '../../Features/Home/presentation/views/widgets/custom_book_image.dart';
import '../utils/functions/navigate_to_book_details_view.dart';
import 'package:flutter/material.dart';

import '../utils/my_colors.dart';
import '../utils/styles.dart';
import '../../Features/Home/presentation/views/widgets/book_rating.dart';

class BooksListViewItem extends StatelessWidget {
  const BooksListViewItem({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        navigateToBookDetailsView(context, book);
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            Hero(
              tag: book.volumeInfo!.title!,
              child: CustomBookImage(
                  imageUrl: book.volumeInfo?.imageLinks?.thumbnail ?? ''),
            ),
            const SizedBox(width: 30),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    book.volumeInfo?.title ?? '',
                    style: Styles.textStyle20.copyWith(
                      fontWeight: FontWeight.w400,
                      // fontFamily: kGTSectraFine
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 3),
                  Text(
                    book.volumeInfo?.authors?[0] ?? '',
                    style: Styles.textStyle14.copyWith(
                      fontWeight: FontWeight.w500,
                      color: MyColors.myWhite.withOpacity(
                        0.7,
                      ),
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 3),
                  Row(
                    children: [
                      const Text('Free', style: Styles.textStyle20),
                      const Spacer(),
                      BookRating(
                        averageRating: book.volumeInfo?.averageRating ?? 0,
                        ratingsCount: book.volumeInfo?.ratingsCount ?? 0,
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
