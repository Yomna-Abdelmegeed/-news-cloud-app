import 'package:flutter/material.dart';
import 'package:news_app/widgets/category_list_view.dart';
import 'package:news_app/widgets/news_list_view_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 80,
          backgroundColor: Colors.white,
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('News', style: TextStyle(fontWeight: FontWeight.bold)),
              Text(
                'Cloud',
                style: TextStyle(
                    color: Color.fromARGB(255, 215, 193, 0),
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        body: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: CategoryListView(),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 35,
                ),
              ),
              NewsListViewBuilder(),
              // SliverToBoxAdapter(child: NewsListView() ,),
            ],
          ),
          // child:  Column(
          //   children: [
          //     CategoryListView(),
          //     SizedBox(height: 23,),
          //     Expanded(child: NewsListView()),
          //   ],
          // ),
        ));
  }
}
