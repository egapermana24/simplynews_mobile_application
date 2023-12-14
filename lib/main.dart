import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:simplynews/screen/navbar/navbar.dart';
import 'package:simplynews/aturan/constants/warna_apps.dart';
import 'package:simplynews/screen/bookmarks/widgets/bookmark_binding.dart';


void main() {
  runApp(const Simplynews());
}

class Simplynews extends StatelessWidget {
  const Simplynews({super.key});
  
  @override 
  Widget build(BuildContext context) {
    GetMaterialApp simplynews = GetMaterialApp(
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: AppColors.primaryColor,
      ),
      home: const MainTabBar( initialPageIndex: 0,),
      // Inisialisasi BookmarksController
      initialBinding: BookmarksControllerBinding(),
    );

    return simplynews;
  }
}
