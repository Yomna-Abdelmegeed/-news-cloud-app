import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/services/news_services.dart';
import 'package:news_app/widgets/news_list_view.dart';

class NewsListViewBuilder extends StatelessWidget {
  final String? cat;

  const NewsListViewBuilder({super.key, this.cat});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: NewsServices(Dio()).gettNews(category: cat),
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