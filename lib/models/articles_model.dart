import 'package:flutter/foundation.dart';

class ArticleModel {
  final String? image;
  final String title;
  final String? subtitle;

  const ArticleModel({
    required this.image,
    required this.title,
    required this.subtitle,
  });

  factory ArticleModel.fromJson(Map<String, dynamic> json) {
    return ArticleModel(
        image: json['urlToImage'],
        title: json['title'],
        subtitle: json['description']);
  }
}
