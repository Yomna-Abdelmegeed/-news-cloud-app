import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsServices {
  final Dio dio;
  NewsServices(this.dio);

  Future<List<ArticleModel>> gettNews({required String category}) async {
    try {
      print('category = $category');
      var response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&category=$category&apiKey=3ab38eb67ab144c8af77c0adea84b57d',
      );

      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      List<ArticleModel> articlesList = [];

      for (var article in articles) {
        ArticleModel articleModel = ArticleModel(
          url: article['url'],
          image: article['urlToImage'],
          title: article['title'],
          subtitle: article['description'],
        );
        articlesList.add(articleModel);
      }

      return articlesList;
    } catch (e) {
      return [];
    }
  }
}
