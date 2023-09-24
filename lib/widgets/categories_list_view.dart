import 'package:flutter/material.dart';

import '../models/category_model.dart';
import 'category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key});

  final List<CategoryModel> categories = const [
    CategoryModel(
        imageAssetUrl: 'assets/business.jpg', categoryName: 'Business'),
    CategoryModel(
        imageAssetUrl: 'assets/entertainment.jpg',
        categoryName: 'Entertainment'),
    CategoryModel(imageAssetUrl: 'assets/general.jpg', categoryName: 'General'),
    CategoryModel(imageAssetUrl: 'assets/health.jpg', categoryName: 'Health'),
    CategoryModel(imageAssetUrl: 'assets/science.jpg', categoryName: 'Science'),
    CategoryModel(imageAssetUrl: 'assets/sports.jpeg', categoryName: 'Sports'),
    CategoryModel(
        imageAssetUrl: 'assets/technology.jpg', categoryName: 'Technology'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => CategoryCard(
          category: categories[index],
        ),
        itemCount: categories.length,
      ),
    );
  }
}
