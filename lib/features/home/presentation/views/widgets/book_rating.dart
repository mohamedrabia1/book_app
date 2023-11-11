import 'package:book_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Row(
     mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(FontAwesomeIcons.solidStar,
            size: 14,
            color: Color(0xffFFDD4F)),
        SizedBox(width: 6),
        Text("4.8",style: Styles.textStyle16),
        SizedBox(width:4),
        Opacity(opacity : .5,
              child: Text("(2390)",style: Styles.textStyle16)),
      ],
    );
  }
}
