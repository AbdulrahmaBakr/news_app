import 'package:flutter/material.dart';
import 'package:news_app/widget/NewsList/get_news_data.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.categoryName});
  final String categoryName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.back_hand)),
      ),
      body: CustomScrollView(
        slivers: [
          GetNewsList(category: categoryName),
        ],
      ),
    );
  }
}
