// buatkan saya class BookmarkItemWidget berdasarkan kodingan yang ada di projek ini
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simplynews/resource/resource.gen.dart';
import 'package:simplynews/model/news_model.dart';
import 'package:simplynews/screen/bookmarks/widgets/bookmarks_controller.dart';
import 'package:simplynews/screen/details/details_page.dart';
import 'package:simplynews/aturan/constants/warna_apps.dart';
import 'package:simplynews/widgets/spacer/kustom_spasi.dart';

class BookmarkItemWidget extends StatelessWidget {
  final String title;
  final String author;
  final String description;
  final String datePublish;
  final String category;
  final String imageAsset;
  const BookmarkItemWidget({
    Key? key,
    required this.title,
    required this.author,
    required this.description,
    required this.datePublish,
    required this.category,
    required this.imageAsset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final BookmarksController controller = Get.find();
    return InkWell(
      onTap: () {
        Get.to(
          DetailsPage(
            title: title,
            author: author,
            description: description,
            datePublish: datePublish,
            category: category,
            imageAsset: imageAsset,
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 16),
        // padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              imageAsset,
            ),
          ),
        ),
        child: Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.3), // Warna dengan opacity rendah
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontFamily: 'Mulish',
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  height: 1.2,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
              CustomHeightSpacer(
                size: 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    category,
                    style: TextStyle(
                      fontFamily: 'Mulish',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      height: 1.2,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      controller.removeBookmark(ContentNews(
                          title: title,
                          author: author,
                          description: description,
                          datePublish: datePublish,
                          category: category,
                          imageAsset: imageAsset));
                    },
                    child: Image.asset(
                      Assets.icons.icSelectedArchive.path,
                      color: Color.fromARGB(255, 255, 255, 255),
                      width: 24, // Sesuaikan ukuran ikon
                      height: 24,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
