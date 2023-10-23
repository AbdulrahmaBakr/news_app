import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news_app/models/article_model.dart';

class NewsListCard extends StatelessWidget {
  const NewsListCard({
    super.key,
    required this.articleModel,
  });

  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: const Color.fromARGB(108, 158, 158, 158),
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image(
                    image: CachedNetworkImageProvider(articleModel.image ??
                        'https://t4.ftcdn.net/jpg/04/73/25/49/360_F_473254957_bxG9yf4ly7OBO5I0O5KABlN930GwaMQz.jpg'))

                // Image.network(
                // articleModel.image ??
                // 'https://t4.ftcdn.net/jpg/04/73/25/49/360_F_473254957_bxG9yf4ly7OBO5I0O5KABlN930GwaMQz.jpg',
                //   width: 390,
                //   height: 200,
                //   fit: BoxFit.cover,
                // ),
                ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(articleModel.title,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.aboreto(fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Text(articleModel.subTitle ?? '',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.aboreto(
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(98, 0, 0, 0))),
            ),
          ],
        ),
      ),
    );
  }
}
