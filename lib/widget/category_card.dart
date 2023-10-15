// ignore: camel_case_types
import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key,
    required this.category,
  });
  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 200,
        height: 120,
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(category.image),
          ),
        ),
        child: Center(
          child: Text(
            category.categoryName,
            style: const TextStyle(
                color: Color.fromARGB(146, 255, 255, 255), fontSize: 18),
          ),
        ),
      ),
    );
  }
}
