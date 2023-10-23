import 'package:flutter/material.dart';
import 'package:news_app/data/category_data.dart';
import 'package:news_app/widget/category/category_card.dart';
 
class CategoryList extends StatelessWidget {
  const CategoryList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 120,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context, index) {
              return CategoryCard(
                category: categories[index],
              );
            },
          ),
        ),
        const SizedBox(
          height: 12,
        ),
      ],
    );
  }
}
