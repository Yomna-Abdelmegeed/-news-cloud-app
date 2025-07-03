import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsServices {
  final Dio dio;
  NewsServices(this.dio);

  Future<List<ArticleModel>> gettNews({String? category}) async {
    return await Future.delayed(const Duration(seconds: 5), () async {
      try {
        String cat = category ?? 'general';
        print('category = $cat');
        var response = await dio.get(
            'https://newsapi.org/v2/top-headlines?country=us&category=$cat&apiKey=3ab38eb67ab144c8af77c0adea84b57d');
        Map<String, dynamic> jsonData = response.data;
        List<dynamic> articles = jsonData['articles'];
        List<ArticleModel> articlesList = [];

        for (var article in articles) {
          ArticleModel articleModel = ArticleModel(
              image: article['urlToImage'],
              title: article['title'],
              subtitle: article['description']);
          articlesList.add(articleModel);
        }

        return articlesList;
      } catch (e) {
        return [];
      }
    });
  }
}
