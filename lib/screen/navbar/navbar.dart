import 'package:flutter/material.dart';
import 'package:simplynews/screen/bookmarks/bookmarks_page.dart';
// import 'package:simplynews/screen/details/details_page.dart';
import 'package:simplynews/screen/home/home_page.dart';
import 'package:simplynews/screen/trending/search_page.dart';

import '../../resource/resource.gen.dart';
import '../../aturan/constants/warna_apps.dart';
import 'widgets/bottom_icon_widget.dart';
import 'widgets/top_icon_widget.dart';

class MainTabBar extends StatefulWidget {
  final int initialPageIndex;
  const MainTabBar({Key? key, required this.initialPageIndex})
      : super(key: key);

  @override
  _MainTabBarState createState() => _MainTabBarState();
}

class _MainTabBarState extends State<MainTabBar> {
  int pageIndex = 0;
  late int initialPageIndex;

  final pages = [
    HomePage(),
    SearchPage(),
    BookmarksPage(
      data: {
        'title': 'Bookmarks',
      },
    ),
  ];

  @override
  void initState() {
    super.initState();
    initialPageIndex = widget.initialPageIndex;
    pageIndex = initialPageIndex;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        bool isDesktop = constraints.maxWidth > 600;
        bool isMobile = constraints.maxWidth <= 600;

        return Scaffold(
          appBar: isDesktop
              ? PreferredSize(
                  preferredSize: Size.fromHeight(
                      70.0), // Sesuaikan dengan tinggi yang diinginkan
                  child: AppBar(
                    shadowColor: Colors.transparent,
                    backgroundColor: Theme.of(context).bottomAppBarColor,
                    title: const Text('Your App Title'),
                    centerTitle: true,
                    actions: [
                      Spacer(),
                      TopIconWidget(
                        title: 'Home',
                        titleColor: pageIndex == 0
                            ? Theme.of(context).primaryColor
                            : AppColors.gray,
                        iconName: pageIndex == 0
                            ? Assets.icons.icSelectedHome.path
                            : Assets.icons.icUnselectedHome.path,
                        iconColor: pageIndex == 0
                            ? Theme.of(context).primaryColor
                            : AppColors.gray,
                        tap: () {
                          setState(() {
                            pageIndex = 0;
                          });
                        },
                      ),
                      SizedBox(width: 12),
                      TopIconWidget(
                        title: 'Search',
                        titleColor: pageIndex == 1
                            ? Theme.of(context).primaryColor
                            : AppColors.gray,
                        iconName: pageIndex == 1
                            ? Assets.icons.icSelectedSearchNormal.path
                            : Assets.icons.icUnselectedSearchNormal.path,
                        iconColor: pageIndex == 1
                            ? Theme.of(context).primaryColor
                            : AppColors.gray,
                        tap: () {
                          setState(() {
                            pageIndex = 1;
                          });
                        },
                      ),
                      SizedBox(width: 12),
                      TopIconWidget(
                        title: 'Bookmarks',
                        titleColor: pageIndex == 2
                            ? Theme.of(context).primaryColor
                            : AppColors.gray,
                        iconName: pageIndex == 2
                            ? Assets.icons.icSelectedArchive.path
                            : Assets.icons.icUnselectedArchive.path,
                        iconColor: pageIndex == 2
                            ? Theme.of(context).primaryColor
                            : AppColors.gray,
                        tap: () {
                          setState(() {
                            pageIndex = 2;
                          });
                        },
                      ),
                      Spacer(),
                    ],
                  ),
                )
              : null,
          body: Center(
            child: pages[pageIndex],
          ),
          bottomNavigationBar: isMobile
              ? Container(
                  height: 70,
                  color: Theme.of(context).bottomAppBarColor,
                  margin: const EdgeInsets.only(top: 2, right: 0, left: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      BottomIconWidget(
                        title: '',
                        iconName: pageIndex == 0
                            ? Assets.icons.icSelectedHome.path
                            : Assets.icons.icUnselectedHome.path,
                        iconColor: pageIndex == 0
                            ? Theme.of(context).primaryColor
                            : AppColors.gray,
                        tap: () {
                          setState(() {
                            pageIndex = 0;
                          });
                        },
                      ),
                      BottomIconWidget(
                        title: '',
                        iconName: pageIndex == 1
                            ? Assets.icons.icSelectedSearchNormal.path
                            : Assets.icons.icUnselectedSearchNormal.path,
                        iconColor: pageIndex == 1
                            ? Theme.of(context).primaryColor
                            : AppColors.gray,
                        tap: () {
                          setState(() {
                            pageIndex = 1;
                          });
                        },
                      ),
                      BottomIconWidget(
                        title: '',
                        iconName: pageIndex == 2
                            ? Assets.icons.icSelectedArchive.path
                            : Assets.icons.icUnselectedArchive.path,
                        iconColor: pageIndex == 2
                            ? Theme.of(context).primaryColor
                            : AppColors.gray,
                        tap: () {
                          setState(() {
                            pageIndex = 2;
                          });
                        },
                      ),
                    ],
                  ),
                )
              : null,
        );
      },
    );
  }
}
