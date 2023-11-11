import 'package:book_app/features/search/presentation/view/widgets/search_view_body.dart';
import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  static const routeName = "search";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(child: SearchViewBody()));
  }
}
