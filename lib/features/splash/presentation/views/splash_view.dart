import 'package:book_app/features/Splash/presentation/views/widgets/splash_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SplashView extends StatelessWidget {
  static const routeName = "splash";

  @override
  Widget build(BuildContext context) {
    return const  Scaffold(
    
      body: SplashViewbody(),
    );
  }
}
