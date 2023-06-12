import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../Features/Home/data/models/book_model/book_model.dart';
import '../app_router.dart';

Future<Object?> navigateToBookDetailsView(
    BuildContext context, BookModel book) {
  return GoRouter.of(context).push(AppRouter.kBookDetailsView, extra: book);
}
