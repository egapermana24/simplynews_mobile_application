import 'package:flutter/material.dart';

class TopIconWidget extends StatelessWidget {
  const TopIconWidget({
    Key? key,
    required this.title,
    this.titleColor,
    required this.iconName,
    this.iconColor,
    this.tap,
  }) : super(key: key);

  final String title;
  final Color? titleColor;
  final String iconName;
  final Color? iconColor;
  final Function()? tap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: tap,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                iconName,
                width: 24,
                height: 24,
                color: iconColor,
              ),
            ),
            SizedBox(width: 1),
            Text(
              title,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: titleColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
