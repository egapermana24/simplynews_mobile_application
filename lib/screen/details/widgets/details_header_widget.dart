import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simplynews/model/news_model.dart';

import '../../../resource/resource.gen.dart';
import '../../../aturan/constants/warna_apps.dart';
import '../../../aturan/pengaturan.dart';
import '../../../widgets/spacer/kustom_spasi.dart';
import '../../home/widgets/round_icon_button_widget.dart';
import '../../../screen/bookmarks/widgets/bookmarks_controller.dart';

class DetailsHeaderWidget extends StatelessWidget {
  final String title;
  final String author;
  final String description;
  final String datePublish;
  final String category;
  final String imageAsset;
  final Function()? onTap;

  const DetailsHeaderWidget({
    Key? key,
    required this.title,
    required this.author,
    required this.description,
    required this.datePublish,
    required this.category,
    required this.imageAsset,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        bool isDesktop = constraints.maxWidth > 600;
        bool isMobile = constraints.maxWidth <= 600;
        final BookmarksController controller = Get.put(BookmarksController());
        return Container(
          width: double.infinity,
          height: isDesktop ? 500 : 300,
          decoration: BoxDecoration(
            color: Color(0xffbdbdbd),
            image: DecorationImage(
              fit: BoxFit.cover,
              // Adjusted the code here
              image: AssetImage(
                imageAsset,
              ),
            ),
            borderRadius: isMobile
                ? const BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                  )
                : null,
          ),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: const [0.0, 0.5, 1.0],
                colors: [
                  Colors.black.withOpacity(0.5),
                  Colors.black.withOpacity(0.7),
                  Colors.black.withOpacity(0.5),
                ],
              ),
              borderRadius: isMobile
                  ? const BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    )
                  : null,
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(24.0, 45, 24, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      if (isMobile)
                        RoundIconButtonWidget(
                          iconName: Assets.icons.icBack.path,
                          iconColor: AppColors.backGroundColor,
                          iconWidth: 20,
                          iconHeight: 20,
                          borderColor: AppColors.borderColor,
                          onTap: onTap,
                        ),
                      Container(
                        width: 87,
                        height: 38,
                        decoration: BoxDecoration(
                          border: Border.all(color: const Color(0x99f1f1f1)),
                          borderRadius: BorderRadius.circular(72),
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                category,
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont(
                                  'Mulish',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  height: 1.3,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      RoundIconButtonWidget(
                        iconName: controller.isBookmarked(ContentNews(
                          title: title,
                          author: author,
                          description: description,
                          datePublish: datePublish,
                          category: category,
                          imageAsset: imageAsset,
                        ))
                            ? Assets.icons.icSelectedArchive.path
                            : Assets.icons.icArchiveAdd.path,
                        iconColor: AppColors.backGroundColor,
                        iconWidth: isMobile ? 20 : 30,
                        iconHeight: isMobile ? 20 : 30,
                        borderColor: AppColors.borderColor,
                        onTap: () {
                          if (!controller.isBookmarked(ContentNews(
                            title: title,
                            author: author,
                            description: description,
                            datePublish: datePublish,
                            category: category,
                            imageAsset: imageAsset,
                          ))) {
                            controller.addBookmark(ContentNews(
                              title: title,
                              author: author,
                              description: description,
                              datePublish: datePublish,
                              category: category,
                              imageAsset: imageAsset,
                            ));
                          } else {
                            controller.removeBookmarkDetails(ContentNews(
                              title: title,
                              author: author,
                              description: description,
                              datePublish: datePublish,
                              category: category,
                              imageAsset: imageAsset,
                            ));
                          }
                        },
                      ),
                    ],
                  ),
                  CustomHeightSpacer(
                    size: 0.2,
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 5.0, vertical: 15),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              if (isDesktop)
                                Text(
                                  title,
                                  style: SafeGoogleFont(
                                    'Mulish',
                                    fontSize: isMobile ? 20 : 40,
                                    fontWeight: FontWeight.w700,
                                    height: 1.3,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
