import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/widget/NewsList/news_list_card.dart';
 
class NewsList extends StatelessWidget {
  const NewsList({
    super.key, required this.artical,
  });

 final List<ArticleModel> artical;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: artical.length,
        (context, index) => NewsListCard(articleModel: artical[index]),
      ),
    );
  }
}
