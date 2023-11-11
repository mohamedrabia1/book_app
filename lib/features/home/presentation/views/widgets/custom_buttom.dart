import 'package:book_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
 String? text;
 Color? backGroundColor;
 Color? textColor;
 BorderRadius? borderRadius;

 CustomButtom(
     {required this.text, this.backGroundColor, this.borderRadius, this.textColor});


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: backGroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: borderRadius!
          )
        ),
          onPressed: (){},
          child: Text(text!,style: Styles.textStyle18.copyWith(
              fontWeight: FontWeight.bold,
            color: textColor
          ),)),
    );
  }
}
