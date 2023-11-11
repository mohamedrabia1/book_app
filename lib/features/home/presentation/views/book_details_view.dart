import 'package:book_app/features/home/presentation/views/widgets/book_details_view_body.dart';import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BookDetailsView extends StatelessWidget {
  static const routeName = "book_detials";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BookDetailsViewBody(),
    );
  }
}
