import 'package:flutter/material.dart';
import '../../../aturan/pengaturan.dart';
import '../../../widgets/spacer/kustom_spasi.dart';

class CardViewWidget extends StatelessWidget {
  const CardViewWidget({
    Key? key,
    required this.title,
    required this.author,
    required this.description,
    required this.datePublish,
    required this.category,
    required this.imageAsset,
    this.searchQuery,
    this.onTap,
  }) : super(key: key);

  final String title;
  final String author;
  final String description;
  final String datePublish;
  final String category;
  final String imageAsset;
  final String? searchQuery;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final bool isMobile = constraints.maxWidth <= 600;

        return GestureDetector(
          onTap: onTap,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: isMobile ? 8.0 : 16.0),
            child: _buildMobileLayout(),
          ),
        );
      },
    );
  }

  Widget _buildMobileLayout() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          height: 150,
          decoration: BoxDecoration(
            color: Color(0xffbdbdbd),
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(imageAsset),
            ),
          ),
        ),
        CustomHeightSpacer(size: 0.02),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: SafeGoogleFont(
                'Mulish',
                fontSize: 16,
                fontWeight: FontWeight.w700,
                height: 1.3,
                color: Color(0xff1a434e),
              ),
            ),
            CustomHeightSpacer(size: 0.005),
            Text(
              datePublish,
              style: SafeGoogleFont(
                'Mulish',
                fontSize: 12,
                fontWeight: FontWeight.w400,
                height: 1.4,
                color: Color(0xff1a434e),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
