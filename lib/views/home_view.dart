import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
 import 'package:news_app/widget/NewsList/get_news_data.dart';
import 'package:news_app/widget/category/category_list.dart';
 
class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
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
      body: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: CategoryList(),
          ),
          GetNewsList(category: 'general'),
        ],
      ),
    );
  }
}
