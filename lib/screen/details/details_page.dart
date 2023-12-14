import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simplynews/screen/details/widgets/details_header_widget.dart';
import 'package:simplynews/aturan/constants/warna_apps.dart';
import 'package:simplynews/screen/navbar/navbar.dart';
import 'package:simplynews/screen/navbar/widgets/top_icon_widget.dart';
import '../../resource/resource.gen.dart';

import '../../aturan/pengaturan.dart';

class DetailsPage extends StatefulWidget {
  final String title;
  final String author;
  final String description;
  final String datePublish;
  final String category;
  final String imageAsset;

  const DetailsPage({
    Key? key,
    required this.title,
    required this.author,
    required this.description,
    required this.datePublish,
    required this.category,
    required this.imageAsset,
  }) : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      bool isDesktop = constraints.maxWidth > 600;
      bool isMobile = constraints.maxWidth <= 600;
      return Scaffold(
        backgroundColor: AppColors.backGroundColor,
        appBar: isDesktop
            ? PreferredSize(
                preferredSize: Size.fromHeight(
                    50.0), // Sesuaikan dengan tinggi yang diinginkan
                child: AppBar(
                  backgroundColor: Theme.of(context).bottomAppBarColor,
                  title: const Text('Your App Title'),
                  centerTitle: true,
                  actions: [
                    Spacer(),
                    TopIconWidget(
                      title: 'Home',
                      titleColor: AppColors.gray,
                      iconName: Assets.icons.icUnselectedHome.path,
                      iconColor: AppColors.gray,
                      tap: () {
                        Get.offAll(() => MainTabBar(initialPageIndex: 0));
                      },
                    ),
                    SizedBox(width: 12),
                    TopIconWidget(
                      title: 'Search',
                      titleColor: AppColors.gray,
                      iconName: Assets.icons.icUnselectedSearchNormal.path,
                      iconColor: AppColors.gray,
                      tap: () {
                        Get.offAll(() => MainTabBar(initialPageIndex: 1));
                      },
                    ),
                    SizedBox(width: 12),
                    TopIconWidget(
                      title: 'Bookmarks',
                      titleColor: AppColors.gray,
                      iconName: Assets.icons.icUnselectedArchive.path,
                      iconColor: AppColors.gray,
                      tap: () {
                        Get.offAll(() => MainTabBar(initialPageIndex: 2));
                      },
                    ),
                    Spacer(),
                  ],
                ),
              )
            : null,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DetailsHeaderWidget(
                  title: widget.title,
                  author: widget.author,
                  description: widget.description,
                  datePublish: widget.datePublish,
                  imageAsset: widget.imageAsset,
                  category: widget.category,
                  onTap: () {
                    Get.back();
                  }),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 24),
                child: Text(
                  widget.datePublish,
                  style: SafeGoogleFont(
                    'Mulish',
                    fontSize: isMobile ? 14 : 18,
                    fontWeight: FontWeight.w400,
                    height: 1.8,
                    color: Color(0xff95a6aa),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: Text(
                  widget.title,
                  style: SafeGoogleFont(
                    'Mulish',
                    fontSize: isMobile ? 16 : 24,
                    fontWeight: FontWeight.w700,
                    height: 1.3,
                    color: Color(0xff1a434e),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 24),
                child: Text(
                  widget.description,
                  style: SafeGoogleFont(
                    'Mulish',
                    fontSize: isMobile ? 14 : 18,
                    fontWeight: FontWeight.w400,
                    height: 1.8,
                    color: Color(0xff95a6aa),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
