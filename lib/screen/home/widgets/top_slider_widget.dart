import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
// import 'package:get/get.dart';
import 'package:simplynews/model/news_model.dart';

// import '../../../gen/assets.gen.dart';
import '../../../aturan/pengaturan.dart';

class TopSliderWidget extends StatelessWidget {
  final List<ContentNews> contentNewsList;
  final Function(int)? onTap;

  const TopSliderWidget({
    required this.contentNewsList,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        double containerWidth = MediaQuery.of(context).size.width * 0.8;

        // Adjust width and height based on screen size
        if (constraints.maxWidth >= 600) {
          containerWidth =
              MediaQuery.of(context).size.width * 0.6; // Adjust as needed
        }

        double containerHeight = constraints.maxWidth >= 600 ? 300.0 : 180.0;

        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(contentNewsList.length, (index) {
              final ContentNews contentNews = contentNewsList[index];
              return GestureDetector(
                onTap: () {
                  onTap?.call(index);
                },
                child: Container(
                  width: containerWidth,
                  height: containerHeight,
                  margin: EdgeInsets.only(right: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(contentNews.imageAsset),
                    ),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(25.0, 0, 25.0, 10.0),
                          child: Text(
                            contentNews.title,
                            style: SafeGoogleFont(
                              'Mulish',
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              height: 1.3,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.fromLTRB(25.0, 0, 25.0, 25.0),
                              child: Text(
                                contentNews.datePublish,
                                style: SafeGoogleFont(
                                  'Mulish',
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  height: 1.4,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }),
          ),
        );
      },
    );
  }
}
