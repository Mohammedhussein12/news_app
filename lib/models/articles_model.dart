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
        image: json['urlToImage'] ??
            'https://img.freepik.com/free-vector/gradient-no-photo-sign-design_23-2149288316.jpg?w=740&t=st=1695819430~exp=1695820030~hmac=7886faeee5260d500aaaf5abd49c19fd0735cf308e6bbf634efcc6df8ed5e170',
        title: json['title'],
        subtitle: json['description']);
  }
}
