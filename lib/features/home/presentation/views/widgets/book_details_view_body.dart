import 'package:book_app/core/utils/app_assets.dart';
import 'package:book_app/core/utils/app_colors.dart';
import 'package:book_app/core/utils/constants.dart';
import 'package:book_app/core/utils/styles.dart';
import 'package:book_app/features/home/presentation/views/home_view.dart';
import 'package:book_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:book_app/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:book_app/features/home/presentation/views/widgets/custom_buttom.dart';
import 'package:book_app/features/home/presentation/views/widgets/featured_books_list_view.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.transparent,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(onPressed: (){
            Navigator.pushReplacementNamed(context, HomeView.routeName);
          },icon: Icon(Icons.close),),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: IconButton(onPressed: (){},icon: Icon(Icons.shopping_cart),),
          )
        ],
      ),

      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: double.infinity,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                        height:MediaQuery.of(context).size.height* 0.30,
                        child: CustomBookItem()),
                    SizedBox(height: 26),
                    Text("Star War",
                      maxLines: 2,style: Styles.textStyle30.copyWith(
                        fontFamily: kGtSectraFine,
                      ),
                      overflow: TextOverflow.ellipsis,),
                    SizedBox(height: 10),
                    Opacity(
                      opacity: .7,
                      child: Text("Return Of The Jadi",style: Styles.textStyle18.copyWith(
                        fontWeight: FontWeight.bold,)),
                    ),
                    SizedBox(height: 10),
                    BookRating(),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Row(
                        children: [
                          Expanded(
                            child: CustomButtom(
                                text: "19.99 €",
                                backGroundColor: Colors.white,
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(16),bottomLeft: Radius.circular(16)),
                                textColor: Colors.black),
                          ),
                          Expanded(
                            child: CustomButtom(
                                text: "Free Preview",
                                backGroundColor: Color(0xffEF8262),
                                borderRadius: BorderRadius.only(topRight: Radius.circular(16),bottomRight: Radius.circular(16)),
                                textColor: Colors.white),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: Align(
                          alignment: Alignment.topLeft,
                          child: Text("You can also like ",textAlign: TextAlign.start,style: Styles.textStyle18,)),
                    ),
                    Expanded(child: FeaturedBooksListView())
                  ],
                ),
              ),
            ),
          )
        ],
      )
    );
  }
}
