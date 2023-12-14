import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:simplynews/aturan/constants/app_colors.dart';
import 'package:simplynews/widgets/spacer/kustom_spasi.dart';

import '../../aturan/pengaturan.dart';
import '../../model/news_model.dart';
import '../details/details_page.dart';
// import '../home/widgets/card_view_widget.dart';
import 'widgets/search_bar_widget.dart';
import 'widgets/search_header_widget.dart';
import 'widgets/trending_topic_widget.dart';
import 'widgets/horizontal_trending_topic.dart';

class SearchPage extends StatefulWidget {
  SearchPage({
    Key? key,
  }) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: AppColors.backGroundColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24.0, 45, 24, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SearchHeaderWidget(),
              CustomHeightSpacer(
                size: 0.04,
              ),
              SearchBarWidget(),
              CustomHeightSpacer(
                size: 0.04,
              ),
              Text(
                'Berita Trending Hari Ini',
                style: SafeGoogleFont(
                  'Mulish',
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  height: 1.3,
                  color: Color(0xff1a434e),
                ),
              ),
              const CustomHeightSpacer(
                size: 0.04,
              ),
              HorizontalTrending(
                contentNewsList: contentNewsList,
                onTap: (int index) {
                  Get.to(DetailsPage(
                    title: contentNewsList[index].title,
                    author: contentNewsList[index].author,
                    description: contentNewsList[index].description,
                    datePublish: contentNewsList[index].datePublish,
                    category: contentNewsList[index].category,
                    imageAsset: contentNewsList[index].imageAsset,
                  ));
                },
              ),
              CustomHeightSpacer(
                size: 0.04,
              ),
              Text(
                'Topik Trending Hari Ini',
                style: SafeGoogleFont(
                  'Mulish',
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  height: 1.3,
                  color: Color(0xff1a434e),
                ),
              ),
              CustomHeightSpacer(
                size: 0.03,
              ),
              TrendingTopicWidget(
                category: 'Politik',
              ),
              CustomHeightSpacer(
                size: 0.02,
              ),
              TrendingTopicWidget(
                category: 'Pendidikan',
              ),
              CustomHeightSpacer(
                size: 0.02,
              ),
              TrendingTopicWidget(
                category: 'Ekonomi',
              ),
              CustomHeightSpacer(
                size: 0.02,
              ),
              TrendingTopicWidget(
                category: 'Bisnis',
              ),
              CustomHeightSpacer(
                size: 0.04,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
