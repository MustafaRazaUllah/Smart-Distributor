import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'package:smartdistributor/Constants/app_constants.dart';
import 'package:smartdistributor/Constants/color.dart';
import 'package:smartdistributor/Utils/Theme/app_config.dart';
import 'package:smartdistributor/Utils/Theme/app_text.dart';

class DgMainButton extends StatelessWidget {
  final String text;
  final Color? borderColor;
  final Color? textColor;
  final bool isFullWidth;
  final bool loading;
  final GestureTapCallback? onPressed;

  const DgMainButton({
    this.onPressed,
    required this.text,
    this.borderColor,
    this.loading = false,
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
              borderRadius:
                  const BorderRadius.all(AppConstants.roundedWidgetRadius),
              // gradient: LinearGradient(
              //   begin: Alignment.topRight,
              //   end: Alignment.bottomLeft,
              //   stops: [0, 1],
              //   colors: [
              //     AppColors.secondary,
              //     AppColors.primary,
              //   ],
              // ),
              color: AppColors.primary,
              boxShadow: [
                BoxShadow(
                  color: AppColors.primary.withOpacity(0.5),
                  offset: const Offset(1.0, 2.0),
                  blurRadius: 10.0,
                  spreadRadius: 2.0,
                )
              ],
            ),
            child: Stack(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Center(
                        child: loading
                            ? SpinKitWave(
                                color: AppColors.secondary,
                                size: SizeConfig.screenWidth * 0.06,
                              )
                            : AppText(
                                text: text,
                                color: textColor ?? AppColors.secondary,
                                fontSize: SizeConfig.screenWidth * 0.04,
                                fontWeight: FontWeight.w600,
                              ),
                      ),
                    ),
                  ],
                ),
                if (!loading)
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
