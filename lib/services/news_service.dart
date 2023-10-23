import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:news_app/models/article_model.dart';

class NewsServices {
  // final Dio dio;

  // NewsServices({required this.dio});

  final baseUrl = 'https://newsapi.org/v2';

  Future<List<ArticleModel>> getNews({required String category}) async {
    Response response = await Dio().get(
        '$baseUrl/top-headlines?country=us&apiKey=98c2cfd5983340bab43aec91419f414e&category=$category');

    //parssing list of maps to list of opjects
    Map<String, dynamic> jsonData = response.data;

    List<dynamic> articales = jsonData['articles'];

    List<ArticleModel> articalList = [];

    for (var articale in articales) {
      ArticleModel articleModel = ArticleModel(
          image: articale['urlToImage'],
          title: articale['title'],
          subTitle: articale['content']);
      articalList.add(articleModel);
    }

    return articalList;
  }
}

// import 'package:dio/dio.dart';
// import 'package:news_app/widgets/news_list_view_builder.dart';
// import 'package:news_app_ui_setup/models/article_model.dart';

// class NewsService {
//   final Dio dio;

//   NewsService(this.dio);

//   Future<List<ArticleModel>> getTopHeadlines({required String category}) async {
//     try {
//       var response = await dio.get(
//           'https://newsapi.org/v2/top-headlines?country=us&apiKey=3c88955c487e4d9db668f011dd85e737&category=$category');

//       Map<String, dynamic> jsonData = response.data;

//       List<dynamic> articles = jsonData['articles'];

//       List<ArticleModel> articlesList = [];

//       for (var article in articles) {
//         ArticleModel articleModel = ArticleModel.fromJson(article);
//         articlesList.add(articleModel);
//       }

//       return articlesList;
//     } catch (e) {
//       return [];
//     }
//   }
// }
