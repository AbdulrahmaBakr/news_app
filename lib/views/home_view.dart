import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/data/category_data.dart';
import 'package:news_app/widget/category_card.dart';
import 'package:news_app/widget/category_list.dart';
import 'package:news_app/widget/news_list_card.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'news',
              style: GoogleFonts.acme(color: Colors.black38, fontSize: 30),
            ),
            Text(
              'App',
              style: GoogleFonts.acme(color: Colors.amber, fontSize: 30),
            ),
          ],
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          const SizedBox(child: CategoryList()),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: NewsList(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
