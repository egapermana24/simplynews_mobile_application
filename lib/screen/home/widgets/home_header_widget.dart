import 'package:flutter/material.dart';
// import 'package:get/get.dart';

import '../../../resource/resource.gen.dart';
import '../../../aturan/constants/warna_apps.dart';
import '../../../aturan/pengaturan.dart';
// import '../../page/page.dart';
import 'round_icon_button_widget.dart';

class HomeHeaderWidget extends StatelessWidget {
  final String sambutan;

  HomeHeaderWidget({Key? key})
      : sambutan = _initSambutan(),
        super(key: key);

  static String _initSambutan() {
    final currentTime = DateTime.now();
    if (currentTime.hour < 10) {
      return 'Selamat Pagi!';
    } else if (currentTime.hour < 14) {
      return 'Selamat Siang!';
    } else if (currentTime.hour < 18) {
      return 'Selamat Sore!';
    } else {
      return 'Selamat Malam!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        RoundIconButtonWidget(
          iconName: Assets.icons.icNotification.path,
          iconColor: AppColors.primaryColor,
          iconWidth: 20,
          iconHeight: 20,
          borderColor: AppColors.borderColor,
          onTap: () {
            // Get.to(
            //   SamplePage(
            //     title: 'Notification Page',
            //   ),
            // );
          },
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                sambutan,
                style: SafeGoogleFont(
                  'Mulish',
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  height: 1.4,
                  color: Color(0xff94a5aa),
                ),
              ),
              Text(
                'Ega Permana',
                textAlign: TextAlign.center,
                style: SafeGoogleFont(
                  'Mulish',
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  height: 1.3,
                  color: Color(0xff1a434e),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
