import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
// import 'package:get/get.dart';
import 'package:simplynews/model/news_model.dart';

// import '../../../gen/assets.gen.dart';
import '../../../aturan/pengaturan.dart';

class HorizontalTrending extends StatelessWidget {
  final List<ContentNews> contentNewsList;
  final Function(int)? onTap;

  const HorizontalTrending({
    required this.contentNewsList,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    // Gunakan ScrollController untuk mengontrol perilaku gulir
    ScrollController _scrollController = ScrollController();

    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        bool isDesktop = constraints.maxWidth > 600;
        bool isMiniMobile = constraints.maxWidth < 300;

        // Menentukan jumlah maksimal item yang ditampilkan
        int maxItems = isDesktop ? 4 : contentNewsList.length;

        return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          controller: _scrollController, // Gunakan ScrollController
          physics: isDesktop ? BouncingScrollPhysics() : null,
          child: Row(
            children: List.generate(maxItems, (index) {
              final ContentNews contentNews = contentNewsList[index];
              return MouseRegion(
                cursor: SystemMouseCursors.grab,
                child: GestureDetector(
                  onTap: () {
                    onTap?.call(index);
                  },
                  child: Container(
                    width: isDesktop
                        ? MediaQuery.of(context).size.width * 0.4
                        : MediaQuery.of(context).size.width * 0.6,
                    height: 150,
                    margin: EdgeInsets.only(right: 20),
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(contentNews.imageAsset),
                            ),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                contentNews.title,
                                style: SafeGoogleFont(
                                  'Mulish',
                                  fontSize: isMiniMobile ? 10 : 14,
                                  fontWeight: FontWeight.w700,
                                  height: 1.3,
                                  color: Color(0xffffffff),
                                ),
                              ),
                              SizedBox(height: 8),
                              Text(
                                contentNews.datePublish,
                                style: SafeGoogleFont(
                                  'Mulish',
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                  height: 1.4,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ],
                          ),
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
