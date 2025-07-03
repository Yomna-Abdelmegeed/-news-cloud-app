import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/news_services.dart';
import 'package:news_app/widgets/news_list_view.dart';

class NewsListViewBuilder extends StatefulWidget {
  final String cat;

  const NewsListViewBuilder({super.key, required this.cat});

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var future;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    future = NewsServices(Dio()).gettNews(category: widget.cat);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsListView(articles: snapshot.data!);
        } else if (snapshot.hasError) {
          return const SliverToBoxAdapter(
              child: Text('opps there was an error'));
        } else {
          return const SliverFillRemaining(
              child: Center(child: CircularProgressIndicator()));
        }
      },
    );
  }
}





    //  isLoading
    //     ? const SliverFillRemaining(
    //         child: Center(
    //           child: CircularProgressIndicator(),
    //         ),
    //       )
    //     : articles.isNotEmpty
    //         ? NewsListView(articles: articles)
    //         : const SliverToBoxAdapter(
    //             child: Text('opps there was an error'),
    //           );