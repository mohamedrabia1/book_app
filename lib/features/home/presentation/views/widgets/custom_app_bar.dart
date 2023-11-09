import 'package:book_app/core/utils/app_assets.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Row(
           children: [
             Image.asset(AppAssets.splash,height: 20),
             Spacer(),
             IconButton(onPressed: (){}, icon: Icon(Icons.search_rounded))
           ],
        ),
      )
    );
  }
}
