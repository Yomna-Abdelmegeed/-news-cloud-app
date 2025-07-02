import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_card.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key});
  final List<CategoryModel> categories = const [
    CategoryModel(
        categoryImage: 'assets/business.avif', categoryTitle: 'business'),
    CategoryModel(
        categoryImage: 'assets/entertaiment.avif',
        categoryTitle: 'entertaiment'),
    CategoryModel(
        categoryImage: 'assets/general.avif', categoryTitle: 'general'),
    CategoryModel(categoryImage: 'assets/health.avif', categoryTitle: 'health'),
    CategoryModel(
        categoryImage: 'assets/science.avif', categoryTitle: 'science'),
    CategoryModel(categoryImage: 'assets/sports.avif', categoryTitle: 'sports'),
    CategoryModel(
        categoryImage: 'assets/technology.jpeg', categoryTitle: 'technology'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoryCard(
            category: categories[index],
          );
        },
      ),
    );
  }
}
