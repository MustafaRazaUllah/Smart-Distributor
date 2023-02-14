import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smartdistributor/Constants/app_constants.dart';
import 'package:smartdistributor/Constants/app_routes.dart';
import 'package:smartdistributor/Constants/color.dart';
import 'package:smartdistributor/Modules/Auth/View%20Model/auth_viewmodel.dart';
import 'package:smartdistributor/Modules/Auth/View/Components/image_tile.dart';
import 'package:smartdistributor/Utils/Text%20Fields/textfield.dart';
import 'package:smartdistributor/Utils/Theme/app_config.dart';
import 'package:smartdistributor/Utils/Theme/app_text.dart';
import 'package:smartdistributor/Utils/buttons/dg_main_button.dart';
import 'package:smartdistributor/Utils/buttons/dg_outline_button.dart';

class UnderReviewView extends StatelessWidget {
  UnderReviewView({super.key});

  final _serviceVM = Get.find<AuthViewModel>();
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SizedBox.expand(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/data/splash.png"),
            ),
          ),
          padding: EdgeInsets.only(
            top: SizeConfig.screenWidth * 0.14,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: ListView(
                  padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.screenWidth * 0.05,
                  ),
                  shrinkWrap: true,
                  children: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(
                        SizeConfig.screenWidth * 0.27,
                        0,
                        // SizeConfig.screenWidth * 0.2,
                        SizeConfig.screenWidth * 0.27,
                        0,
                      ),
                      child: Image.asset(
                        "assets/applogos/FINALLOGO.png",
                      ),
                    ),
                    SizedBox(height: SizeConfig.screenWidth * 0.12),
                    Column(
                      children: [
                        AppText(
                          text: "Under Review".toUpperCase(),
                          fontSize: SizeConfig.screenWidth * 0.09,
                          fontWeight: FontWeight.w600,
                          color: AppColors.secondary,
                          textAlign: TextAlign.center,
                        ),
                        AppText(
                          text: "Your profle under Review. Please Wait . . ."
                              .toUpperCase(),
                          fontSize: SizeConfig.screenWidth * 0.03,
                          fontWeight: FontWeight.w300,
                          color: AppColors.secondary,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    SizedBox(height: SizeConfig.screenWidth * 0.2),
                    // Align(
                    //   alignment: Alignment.center,
                    //   child: RichText(
                    //     textAlign: TextAlign.center,
                    //     text: TextSpan(
                    //       text: '4',
                    //       style: GoogleFonts.poppins(
                    //         color: AppColors.primary,
                    //         fontSize: SizeConfig.screenWidth * 0.033,
                    //         decoration: TextDecoration.none,
                    //         fontWeight: FontWeight.w600,
                    //       ),
                    //       children: <TextSpan>[
                    //         TextSpan(
                    //           text: ' / ',
                    //           style: GoogleFonts.poppins(
                    //             color: AppColors.secondary,
                    //             fontSize: SizeConfig.screenWidth * 0.033,
                    //             decoration: TextDecoration.none,
                    //             fontWeight: FontWeight.w600,
                    //           ),
                    //         ),
                    //         TextSpan(
                    //           text: '4',
                    //           style: GoogleFonts.poppins(
                    //             color: AppColors.secondary,
                    //             fontSize: SizeConfig.screenWidth * 0.033,
                    //             decoration: TextDecoration.none,
                    //             fontWeight: FontWeight.w600,
                    //           ),
                    //         ),
                    //       ],
                    //     ),
                    //   ),
                    // ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                            AppConstants.outlineWidgetRadius),
                        color: AppColors.primary.withOpacity(0.5),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 30),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: AppText(
                              text: "Hello Dear,".toUpperCase(),
                              fontSize: SizeConfig.screenWidth * 0.035,
                              fontWeight: FontWeight.w600,
                              color: AppColors.secondary,
                              textAlign: TextAlign.center,
                              overflow: TextOverflow.visible,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: AppText(
                              text:
                                  "Your Profile Under Review please wait round about 24 hours working duration. ",
                              fontSize: SizeConfig.screenWidth * 0.035,
                              fontWeight: FontWeight.w600,
                              color: AppColors.secondary,
                              textAlign: TextAlign.center,
                              overflow: TextOverflow.visible,
                              height: 1.5,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(
                  SizeConfig.screenWidth * 0.05,
                  0,
                  // SizeConfig.screenWidth * 0.2,
                  SizeConfig.screenWidth * 0.05,
                  SizeConfig.screenWidth * 0.1,
                ),
                child: DgMainButton(
                  text: "Login",
                  isFullWidth: true,
                  onPressed: () {
                    Get.offAllNamed(AppRoutes.LOGIN);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
