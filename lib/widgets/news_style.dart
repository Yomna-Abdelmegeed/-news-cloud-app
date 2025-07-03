import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

class NewsStyle extends StatelessWidget {
  const NewsStyle({super.key, required this.articleModel});

  final ArticleModel articleModel;


//! cached_network_image
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: Image.network(
            articleModel.image ??
                'https://www.thetombomb.com/images/ForPosts/null.png',
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return Image.network(
                'https://s3-cdn.cmlabs.co/page/2023/01/24/a-guideline-on-how-to-fix-error-404-not-found-effectively-519451.png',
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              );
            },
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          articleModel.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
        Text(
          articleModel.subtitle ?? '',
          maxLines: 2,
          style: const TextStyle(fontSize: 14),
        ),
      ],
    );
  }
}
