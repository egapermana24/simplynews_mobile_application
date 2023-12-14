import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simplynews/screen/details/details_page.dart';
import 'package:simplynews/aturan/constants/warna_apps.dart';
import 'package:simplynews/screen/home/widgets/card_view_widget.dart';
import 'package:simplynews/widgets/spacer/kustom_spasi.dart';

import '../../aturan/pengaturan.dart';
import '../../model/news_model.dart';
import '../../resource/resource.gen.dart';
import 'widgets/grid_view_widget.dart'; // Ganti import CardViewWidget menjadi GridViewWidget
import 'widgets/home_header_widget.dart';
import 'widgets/horizontal_category_list.dart';
import 'widgets/round_icon_button_widget.dart';
import 'widgets/top_slider_widget.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Scaffold(
          backgroundColor: AppColors.backGroundColor,
          body: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              if (constraints.maxWidth <= 600) {
                return const ContentNewsList();
              } else if (constraints.maxWidth <= 1200) {
                return const ContentNewsGrid(gridCount: 4, fontSize: 11);
              } else {
                return const ContentNewsGrid(gridCount: 5, fontSize: 14);
              }
            },
          ),
        );
      },
    );
  }
}

class ContentNewsList extends StatelessWidget {
  const ContentNewsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.fromLTRB(24.0, 45, 24, 0),
        child: Column(
          children: [
            HomeHeaderWidget(),
            const CustomHeightSpacer(
              size: 0.04,
            ),
            TopSliderWidget(
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
            const CustomHeightSpacer(
              size: 0.04,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Cari Berita\nYang Kamu Suka',
                  textAlign: TextAlign.start,
                  style: SafeGoogleFont(
                    'Mulish',
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    height: 1.2,
                    color: Color(0xff1a434e),
                  ),
                ),
                RoundIconButtonWidget(
                  iconName: Assets.icons.icSetting5.path,
                  iconColor: AppColors.primaryColor,
                  iconWidth: 16,
                  iconHeight: 16,
                  borderColor: AppColors.borderColor,
                  onTap: () {},
                ),
              ],
            ),
            const CustomHeightSpacer(
              size: 0.02,
            ),
            HorizontalCategoryList(
              items: [
                contentNewsList[0].category,
                contentNewsList[1].category,
                contentNewsList[2].category,
                contentNewsList[3].category,
                contentNewsList[4].category
              ],
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: contentNewsList.length,
              itemBuilder: (BuildContext context, int index) {
                return CardViewWidget(
                  title: contentNewsList[index].title,
                  author: contentNewsList[index].author,
                  description: contentNewsList[index].description,
                  datePublish: contentNewsList[index].datePublish,
                  category: contentNewsList[index].category,
                  imageAsset: contentNewsList[index].imageAsset,
                  onTap: () {
                    Get.to(DetailsPage(
                      title: contentNewsList[index].title,
                      author: contentNewsList[index].author,
                      description: contentNewsList[index].description,
                      datePublish: contentNewsList[index].datePublish,
                      category: contentNewsList[index].category,
                      imageAsset: contentNewsList[index].imageAsset,
                    ));
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ContentNewsGrid extends StatelessWidget {
  final int gridCount;
  final double fontSize;

  const ContentNewsGrid(
      {Key? key, required this.gridCount, required this.fontSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(24.0, 45, 24, 0),
        child: Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Cari Berita Yang Kamu Suka',
                    textAlign: TextAlign.start,
                    style: SafeGoogleFont(
                      'Mulish',
                      fontSize: 34,
                      fontWeight: FontWeight.w700,
                      height: 1.2,
                      color: const Color(0xff1a434e),
                    ),
                  ),
                  RoundIconButtonWidget(
                    iconName: Assets.icons.icSetting5.path,
                    iconColor: AppColors.primaryColor,
                    iconWidth: 20,
                    iconHeight: 20,
                    borderColor: AppColors.borderColor,
                    onTap: () {},
                  ),
                ],
              ),
              const CustomHeightSpacer(
                size: 0.04,
              ),
              HomeHeaderWidget(),
              const CustomHeightSpacer(
                size: 0.02,
              ),
              HorizontalCategoryList(
                items: [
                  contentNewsList[0].category,
                  contentNewsList[1].category,
                  contentNewsList[2].category,
                  contentNewsList[3].category,
                  contentNewsList[4].category
                ],
              ),
              const CustomHeightSpacer(
                size: 0.04,
              ),
              Expanded(
                child: GridViewWidget(
                  gridCount: gridCount,
                  fontSize: fontSize,
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
