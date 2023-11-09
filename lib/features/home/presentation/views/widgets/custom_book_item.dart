import 'package:book_app/core/utils/app_assets.dart';
import 'package:flutter/material.dart';

class CustomBookItem extends StatelessWidget {
  const CustomBookItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 2.6 / 4,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(AppAssets.test,))
        ),
      ),
    );
  }
}
