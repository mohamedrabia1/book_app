import 'package:book_app/features/home/presentation/views/widgets/book_list_view_item.dart';
import 'package:book_app/features/search/presentation/view/widgets/custom_search_text_field.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        children: [
          CustomSearchTextField(),
          SizedBox(height: 12,),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: 10,
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: BookListViewItem(),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
