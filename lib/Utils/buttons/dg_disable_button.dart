import 'package:flutter/material.dart';
import 'package:smartdistributor/Constants/app_constants.dart';
import 'package:smartdistributor/Constants/color.dart';
import 'package:smartdistributor/Utils/Theme/app_config.dart';
import 'package:smartdistributor/Utils/Theme/app_text.dart';
// import 'package:showuptomeetup/Constants/app_constants.dart';
// import 'package:showuptomeetup/Constants/color.dart';
// import 'package:showuptomeetup/Utils/Theme/app_config.dart';
// import 'package:showuptomeetup/Utils/Theme/app_text.dart';

class DgDisableButton extends StatelessWidget {
  final String text;
  final Color? borderColor;
  final Color? textColor;
  final bool isFullWidth;
  final GestureTapCallback? onPressed;

  const DgDisableButton({
    this.onPressed,
    required this.text,
    this.borderColor,
    this.isFullWidth = false,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Padding(
      padding: !isFullWidth
          ? EdgeInsets.symmetric(horizontal: SizeConfig.screenWidth * 0.1)
          : EdgeInsets.symmetric(horizontal: SizeConfig.screenWidth * 0.0),
      child: Container(
        padding: const EdgeInsets.all(0.01),
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: borderColor ?? AppColors.transparent,
          ),
          borderRadius:
              const BorderRadius.all(AppConstants.outlineWidgetRadius),
        ),
        child: SizedBox(
          height: 50.0,
          child: DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(AppConstants.roundedWidgetRadius),
              color: AppColors.greyText.withOpacity(0.7),
              /* boxShadow: [
                BoxShadow(
                  color: Theme.of(context).shadowColor,
                  offset: const Offset(1.0, 2.0),
                  blurRadius: 8.0,
                  spreadRadius: 2.0,
                )
              ], */
            ),
            child: Stack(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Center(
                        child: AppText(
                          text: text,
                          color: textColor ?? AppColors.whiteText,
                          fontSize: SizeConfig.screenWidth * 0.04,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
                if (onPressed != null)
                  SizedBox.expand(
                    child: Material(
                      borderRadius: const BorderRadius.all(
                          AppConstants.outlineWidgetRadius),
                      type: MaterialType.transparency,
                      child: InkWell(
                        borderRadius: const BorderRadius.all(
                            AppConstants.outlineWidgetRadius),
                        onTap: onPressed,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
