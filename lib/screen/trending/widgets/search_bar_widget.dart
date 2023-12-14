import 'package:flutter/material.dart';

// import '../../../gen/assets.gen.dart';
import '../../../aturan/constants/warna_apps.dart';
// import '../../../aturan/pengaturan.dart';
import '../../../widgets/spacer/kustom_spasi.dart';

class SearchBarWidget extends StatelessWidget {
  final Function(String)? onSearchSubmitted;

  const SearchBarWidget({
    Key? key,
    this.onSearchSubmitted,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.backGroundColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 3),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.search,
              color: AppColors.primaryColor,
            ),
            CustomWidthSpacer(
              size: 0.03,
            ),
            Expanded(
              child: TextField(
                controller: searchController,
                decoration: InputDecoration(
                  hintText: 'Cari berita yang sedang hangat',
                  hintStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    height: 1.2,
                    color: Color(0xff95a6aa),
                  ),
                  border: InputBorder.none,
                ),
                onSubmitted: (value) {
                  // agar mengirimkan inputan user untuk menampilkan data berita menggunakan class card_view_widget.dart
                  // onSearchSubmitted!(value);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
