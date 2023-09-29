import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/articles_model.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articleModel});

  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 22),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(6),
            child: CachedNetworkImage(
              imageUrl: articleModel.image!,
              fit: BoxFit.cover,
              width: 300,
              height: 250,
              placeholder: (context, url) => const Center(
                child: CircularProgressIndicator(
                  color: Colors.black,
                ),
              ),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            articleModel.title,
            style: const TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.black87,
                fontSize: 16),
          ),
          Text(
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            articleModel.subtitle ?? "",
            style: const TextStyle(color: Colors.grey, fontSize: 12),
          ),
        ],
      ),
    );
  }
}
