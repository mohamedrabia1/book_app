import 'package:book_app/core/utils/constants.dart';
import 'package:book_app/core/utils/styles.dart';
import 'package:book_app/features/home/presentation/views/widgets/best_seller_list_vew.dart';
import 'package:book_app/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

import 'featured_books_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              FeaturedBooksListView(),
              SizedBox(height: MediaQuery.of(context).size.height*.06),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30,vertical: 10),

                child: Text("Best Seller",style: Styles.textStyle20.copyWith(
                  fontWeight: FontWeight.bold)),
              ),
            ],
          ),
        ),
        SliverFillRemaining(
          child:  Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: BestSellerListView(),
          ),
        )
      ],

    );
  }
}
