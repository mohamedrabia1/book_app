import 'package:book_app/core/utils/app_assets.dart';
import 'package:book_app/core/utils/constants.dart';
import 'package:book_app/core/utils/styles.dart';
import 'package:book_app/features/home/presentation/views/book_details_view.dart';
import 'package:book_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:flutter/material.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, BookDetailsView.routeName);
      },
      child: Container(
        height: MediaQuery.of(context).size.height * .2,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.4 / 4,
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(AppAssets.test,))
                ),
              ),
            ),
            SizedBox(width: 30,),
            SizedBox(
              width: MediaQuery.of(context).size.width * .5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
               crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Star War",
                    maxLines: 2,style: Styles.textStyle30.copyWith(
                    fontFamily: kGtSectraFine,

                  ),
                    overflow: TextOverflow.ellipsis,),
                  SizedBox(height: 4),
                  Opacity(
                    opacity: .7,
                    child: Text("Return Of The Jadi",style: Styles.textStyle14.copyWith(
                      fontWeight: FontWeight.bold,)),
                  ),
                  SizedBox(height: 4),
                  Row(
                    children: [
                      Text("19.9 €",style: Styles.textStyle18,),
                     Spacer(),
                     BookRating(),
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
