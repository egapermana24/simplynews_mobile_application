import 'package:flutter/material.dart';

import '../../../resource/resource.gen.dart';
import '../../../aturan/constants/warna_apps.dart';
import '../../../aturan/pengaturan.dart';
import '../../home/widgets/round_icon_button_widget.dart';

class SearchHeaderWidget extends StatelessWidget {
  const SearchHeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      bool isMobile = constraints.maxWidth <= 600;
      bool isDesktop = constraints.maxWidth > 600;
      bool isMiniMobile = constraints.maxWidth < 300;
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            isMiniMobile
                ? 'Temukan\nBerita\nTerpopuler'
                : isMobile
                    ? 'Temukan Berita\nTerpopuler'
                    : 'Temukan Berita Terpopuler',
            style: SafeGoogleFont(
              'Mulish',
              fontSize: isDesktop
                  ? 32
                  : isMobile
                      ? 24
                      : 18,
              fontWeight: FontWeight.w700,
              height: 1.3,
              color: Color(0xff1a434e),
            ),
          ),
          if (!isMiniMobile)
            RoundIconButtonWidget(
              iconName: Assets.icons.icSetting5.path,
              iconColor: AppColors.primaryColor,
              iconWidth: 20,
              iconHeight: 20,
              borderColor: AppColors.borderColor,
              onTap: () {},
            ),
        ],
      );
    });
  }
}
