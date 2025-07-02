import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

class NewsStyle extends StatelessWidget {
  const NewsStyle({super.key, required this.articleModel});

  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: Image.network(
            articleModel.image ??
                'https://www.google.com.eg/imgres?q=no%20image&imgurl=https%3A%2F%2Ft4.ftcdn.net%2Fjpg%2F04%2F70%2F29%2F97%2F360_F_470299797_UD0eoVMMSUbHCcNJCdv2t8B2g1GVqYgs.jpg&imgrefurl=https%3A%2F%2Fstock.adobe.com%2Fsearch%2Fimages%3Fk%3Dno%2Bphoto&docid=vGeqzIxFSh_R8M&tbnid=nlhazLcE-1yJzM&vet=12ahUKEwi_zJ-C_5OJAxXuVqQEHb86EqEQM3oECBwQAA..i&w=480&h=360&hcb=2&ved=2ahUKEwi_zJ-C_5OJAxXuVqQEHb86EqEQM3oECBwQAA',
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
