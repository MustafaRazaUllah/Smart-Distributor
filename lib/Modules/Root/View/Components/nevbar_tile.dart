import 'package:flutter/material.dart';
import 'package:smartdistributor/Utils/Theme/app_config.dart';
import 'package:smartdistributor/Utils/Theme/app_text.dart';

class NavBarTile extends StatelessWidget {
  final Color iconColor;
  final bool isSelected;
  final String title;
  final bool isImageIcons;
  final dynamic icon;
  final VoidCallback callback;

  const NavBarTile(
      {Key? key,
      required this.iconColor,
      this.isImageIcons = false,
      required this.callback,
      required this.isSelected,
      required this.title,
      required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return InkWell(
      onTap: () {
        callback();
      },
      child: Container(
        color: Colors.white,
        height: 60,
        width: SizeConfig.screenWidth / 4,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 7,
            ),
            isImageIcons
                ? Image.asset(
                    icon,
                    height: 24,
                    color: iconColor,
                  )
                : Icon(
                    icon,
                    size: 24,
                    color: iconColor,
                  ),
            const SizedBox(
              height: 5,
            ),
            AppText(
              text: title,
              fontSize: SizeConfig.screenWidth * 0.023,
              fontWeight: FontWeight.w400,
              color: iconColor,
            ),
            // AppText.customText(title: widget.title,color:widget.isSelected? widget.color:Color(0xFF999B9F) , size: 8),
          ],
        ),
      ),
    );
  }
}
