import 'package:get/get.dart';
import 'package:simplynews/screen/bookmarks/widgets/bookmarks_controller.dart';

class BookmarksControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(BookmarksController());
  }
}
