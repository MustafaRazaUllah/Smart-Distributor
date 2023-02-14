import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:smartdistributor/Constants/app_constants.dart';
import 'package:smartdistributor/Constants/color.dart';
import 'package:smartdistributor/Utils/Theme/app_config.dart';
import 'package:smartdistributor/Utils/Theme/app_text.dart';

class ImageTile extends StatelessWidget {
  final double? radius;
  final String title;
  final Function callback;
  const ImageTile({
    super.key,
    this.radius,
    required this.title,
    required this.callback,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: radius ?? SizeConfig.screenWidth / 2,
        width: radius ?? double.infinity,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            AppConstants.outlineWidgetRadius,
          ),
          border: Border.all(color: AppColors.primaryText),
          color: AppColors.primaryText.withOpacity(0.05),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AppText(
              text: "Upload\n$title",
              height: 1.5,
              textAlign: TextAlign.center,
              fontSize: SizeConfig.screenWidth * 0.03,
            ),
          ],
        ),
      ),
    );
  }
}
