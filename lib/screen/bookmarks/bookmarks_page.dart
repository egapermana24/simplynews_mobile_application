// buatkan saya halaman bookmarks_page.dart berdasarkan kodingan yang ada di projek ini
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simplynews/screen/bookmarks/widgets/bookmark_item_widget.dart';
import 'package:simplynews/screen/bookmarks/widgets/bookmarks_controller.dart';
import 'package:simplynews/widgets/spacer/kustom_spasi.dart';

class BookmarksPage extends StatefulWidget {
  final Map data;
  BookmarksPage({
    required this.data,
    Key? key,
  }) : super(key: key);

  @override
  _BookmarksPageState createState() => _BookmarksPageState();
}

class _BookmarksPageState extends State<BookmarksPage> {
  final BookmarksController controller = Get.put(BookmarksController());

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
              Text(
                'Bookmarks',
                style: TextStyle(
                  fontFamily: 'Mulish',
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  height: 1.2,
                  color: Color(0xff1a434e),
                ),
              ),
              CustomHeightSpacer(
                size: 0.02,
              ),
              GetBuilder<BookmarksController>(
                builder: (controller) {
                  return Text(
                    'Kamu memiliki ${controller.bookmarks.length} berita yang disimpan',
                    style: TextStyle(
                      fontFamily: 'Mulish',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      height: 1.2,
                      color: Color(0xff1a434e),
                    ),
                  );
                },
              ),
              CustomHeightSpacer(
                size: 0.04,
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: controller.bookmarks.length,
                itemBuilder: (context, index) {
                  return BookmarkItemWidget(
                    title: controller.bookmarks[index].title,
                    author: controller.bookmarks[index].author,
                    description: controller.bookmarks[index].description,
                    datePublish: controller.bookmarks[index].datePublish,
                    category: controller.bookmarks[index].category,
                    imageAsset: controller.bookmarks[index].imageAsset,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
