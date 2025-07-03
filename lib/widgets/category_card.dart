import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/views/category_view.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.category});

  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) =>
                CategoryView(category: category.categoryTitle),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 18),
        child: Container(
          alignment: Alignment.center,
          height: 140,
          width: 210,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(category.categoryImage),
            ),
            borderRadius: BorderRadius.circular(12),
            color: Colors.black,
          ),
          child: Text(
            category.categoryTitle,
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 19),
          ),
        ),
      ),
    );
  }
}
