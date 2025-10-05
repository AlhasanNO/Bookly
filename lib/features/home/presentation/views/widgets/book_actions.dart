import 'package:flutter/material.dart';

import 'package:bookly_app/core/models/book/book.dart';
import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:bookly_app/core/functions/launch_url.dart';
import 'package:bookly_app/constants.dart';

class BookActions extends StatelessWidget {
  const BookActions({super.key, required this.book});

  final Book book;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              onPressed: book.saleInfo!.saleability! == 'NOT_FOR_SALE'
                  ? null
                  : () async {
                      await launchCustomUrl(
                        context,
                        book.volumeInfo!.infoLink!,
                      );
                    },
              backgroundColor: Colors.white,
              foregroundColor: kPrimaryColor,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16.0),
                bottomLeft: Radius.circular(16.0),
              ),
              text: book.saleInfo!.saleability! == 'NOT_FOR_SALE'
                  ? 'Not for sale'
                  : book.saleInfo!.saleability!,
            ),
          ),
          Expanded(
            child: CustomButton(
              onPressed: book.volumeInfo!.previewLink == null
                  ? null
                  : () async {
                      await launchCustomUrl(
                        context,
                        book.volumeInfo!.previewLink!,
                      );
                    },
              backgroundColor: const Color(0xffEF8262),
              foregroundColor: Colors.white,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(16.0),
                bottomRight: Radius.circular(16.0),
              ),
              text: book.volumeInfo!.previewLink == null
                  ? 'Not avaliable'
                  : 'Preview',
            ),
          ),
        ],
      ),
    );
  }
}
