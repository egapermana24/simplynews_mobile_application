import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simplynews/model/news_model.dart';
import 'package:simplynews/screen/details/details_page.dart';
import 'package:simplynews/screen/navbar/navbar.dart';

class BookmarksController extends GetxController {
  List<ContentNews> bookmarks = [];

  void addBookmark(ContentNews myData) {
    if (!isBookmarked(myData)) {
      bookmarks.add(myData);
      update();
      showSnackbar('Berita ditambahkan ke bookmark');
      Navigator.pushReplacement(
          Get.context!,
          MaterialPageRoute(
              builder: (context) => DetailsPage(
                  title: myData.title,
                  author: myData.author,
                  description: myData.description,
                  datePublish: myData.datePublish,
                  category: myData.category,
                  imageAsset: myData.imageAsset)));
    }
  }

  void removeBookmarkDetails(ContentNews myData) {
    bookmarks.removeWhere((element) => element.title == myData.title);
    update();
    // Setelah menunggu 1 detik, push halaman kembali
    Navigator.pushReplacement(
        Get.context!,
        MaterialPageRoute(
            builder: (context) => DetailsPage(
                title: myData.title,
                author: myData.author,
                description: myData.description,
                datePublish: myData.datePublish,
                category: myData.category,
                imageAsset: myData.imageAsset)));
    showSnackbar('Berita dihapus dari bookmark');
  }

  void removeBookmark(ContentNews myData) {
    bookmarks.removeWhere((element) => element.title == myData.title);
    update();
    // Get.offAll(MainTabBar(initialPageIndex: 2));
    Navigator.pushReplacement(
        Get.context!,
        MaterialPageRoute(
            builder: (context) => MainTabBar(
                  initialPageIndex: 2,
                )));

    showSnackbar('Berita dihapus dari bookmark');
  }

  bool isBookmarked(ContentNews myData) {
    return bookmarks.any((element) => element.title == myData.title);
  }

  void showSnackbar(String message) {
    Get.snackbar('Notifikasi', message);
  }
}
