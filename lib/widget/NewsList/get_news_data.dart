import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/widget/NewsList/news_list.dart';

class GetNewsList extends StatefulWidget {
  const GetNewsList({
    super.key,
    required this.category,
  });
  final String category;
  @override
  State<GetNewsList> createState() => _GetNewsListState();
}

class _GetNewsListState extends State<GetNewsList> {
  Future<List<ArticleModel>>? future;
  @override
  void initState() {
    super.initState();
    future = NewsServices().getNews(category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsList(
            artical: snapshot.data!,
          );
        } else if (snapshot.hasError) {
          return const SliverToBoxAdapter(
              child: Padding(
            padding: EdgeInsets.only(top: 250.0),
            child: Center(child: Text('error 4O4 Not found !!!  ')),
          ));
        } else {
          return const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.only(top: 250.0),
              child: Center(child: CircularProgressIndicator()),
            ),
          );
        }
      },
    );

    // isLoading
    //     ? const SliverToBoxAdapter(
    //         child: Padding(
    //           padding: EdgeInsets.only(top: 250.0),
    //           child: Center(child: CircularProgressIndicator()),
    //         ),
    //       )
    //     : NewsList(
    //         artical: artical,
    //       );
  }
}
