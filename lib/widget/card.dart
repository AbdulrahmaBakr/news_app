// ignore: camel_case_types
import 'package:flutter/material.dart';

class card_widget extends StatelessWidget {
  const card_widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 200,
        height: 120,
        decoration: BoxDecoration(
            image: const DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/entertaiment.avif'),
            ),
            color: Colors.amber,
            borderRadius: BorderRadius.circular(12)),
      ),
    );
  }
}
