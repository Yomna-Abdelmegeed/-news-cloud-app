import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsServices {
  final Dio dio;
  NewsServices(this.dio);
  Future<List<ArticleModel>> getNews({required String category}) async {
    var response = await dio.get(
        'https://newsdata.io/api/1/latest?apikey=pub_b8b3e5ebb7694acc9bccf3cb786ca45d&country=eg&language=ar&category=top');
    Map<String, dynamic> jsonData = response.data;
    List<dynamic> news = jsonData['results'];
    List<ArticleModel> newsList = [];
    for (var n in news) {
      ArticleModel articleModel = ArticleModel(
          description: n['description'],
          link: n['link'],
          title: n['title'],
          imageUrl: n['image_url']);
      newsList.add(articleModel);
    }
    return newsList;
  }
}
