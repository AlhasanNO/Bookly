import 'package:flutter/material.dart';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:go_router/go_router.dart';

import 'package:bookly_app/features/home/data/models/book/book.dart';
import 'package:bookly_app/core/utils/app_router.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, required this.book, this.canOpen = true});

  final Book book;
  final bool canOpen;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: !canOpen
          ? null
          : () {
              GoRouter.of(context).push(AppRouter.bookDetailsView, extra: book);
            },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        child: AspectRatio(
          aspectRatio: 0.625,
          child: Hero(
            tag: book.etag!,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: CachedNetworkImage(
                imageUrl: book.volumeInfo!.imageLinks!.thumbnail!,
                errorWidget: (context, url, error) => const Icon(Icons.error),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
