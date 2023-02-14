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

class RegisterView extends StatelessWidget {
  RegisterView({super.key});

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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(
                  SizeConfig.screenWidth * 0.02,
                  SizeConfig.screenWidth * 0.1,
                  SizeConfig.screenWidth * 0.05,
                  0,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: IconButton(
                    onPressed: () {
                      _serviceVM.navigateToBackLogin();
                    },
                    splashRadius: 20,
                    icon: Icon(
                      Icons.arrow_back_ios_new,
                      color: AppColors.secondary,
                      size: SizeConfig.screenWidth * 0.06,
                    ),
                  ),
                ),
              ),
              Obx(
                () => Expanded(
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
                            text: "Registration".toUpperCase(),
                            fontSize: SizeConfig.screenWidth * 0.09,
                            fontWeight: FontWeight.w600,
                            color: AppColors.secondary,
                            textAlign: TextAlign.center,
                          ),
                          AppText(
                            text:
                                "With Email and other Basic Info".toUpperCase(),
                            fontSize: SizeConfig.screenWidth * 0.03,
                            fontWeight: FontWeight.w300,
                            color: AppColors.secondary,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      SizedBox(height: SizeConfig.screenWidth * 0.075),
                      Align(
                        alignment: Alignment.centerRight,
                        child: RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            text: '1',
                            style: GoogleFonts.poppins(
                              color: AppColors.primary,
                              fontSize: SizeConfig.screenWidth * 0.033,
                              decoration: TextDecoration.none,
                              fontWeight: FontWeight.w600,
                            ),
                            children: <TextSpan>[
                              TextSpan(
                                text: ' / ',
                                style: GoogleFonts.poppins(
                                  color: AppColors.secondary,
                                  fontSize: SizeConfig.screenWidth * 0.033,
                                  decoration: TextDecoration.none,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              TextSpan(
                                text: '4',
                                style: GoogleFonts.poppins(
                                  color: AppColors.secondary,
                                  fontSize: SizeConfig.screenWidth * 0.033,
                                  decoration: TextDecoration.none,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Form(
                        key: _serviceVM.forgotFormKey,
                        child: Column(
                          children: [
                            AppTextField.simpleField(
                              context,
                              hintText: 'First Name',
                              controller: _serviceVM.emailForgotCont.value,
                            ),
                            SizedBox(height: SizeConfig.screenWidth * 0.05),
                            AppTextField.simpleField(
                              context,
                              hintText: 'Last Name',
                              controller: _serviceVM.emailForgotCont.value,
                            ),
                            SizedBox(height: SizeConfig.screenWidth * 0.05),
                            AppTextField.emailField(
                              context,
                              hintText: 'Email',
                              controller: _serviceVM.emailForgotCont.value,
                            ),
                            SizedBox(height: SizeConfig.screenWidth * 0.05),
                            AppTextField.simpleField(
                              context,
                              hintText: 'Bike Experience',
                              controller: _serviceVM.emailForgotCont.value,
                            ),
                            SizedBox(height: SizeConfig.screenWidth * 0.05),
                            AppTextField.passwordField(
                              context,
                              hintText: 'Password',
                              controller: _serviceVM.emailForgotCont.value,
                              isVisiable: true,
                              callback: () {},
                            ),
                            SizedBox(height: SizeConfig.screenWidth * 0.05),
                            AppTextField.passwordField(
                              context,
                              hintText: 'Confirm Password',
                              controller: _serviceVM.emailForgotCont.value,
                              isVisiable: true,
                              callback: () {},
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: SizeConfig.screenWidth * 0.07),
                      DgMainButton(
                        text: "Continue",
                        isFullWidth: true,
                        onPressed: () {
                          Get.toNamed(AppRoutes.SIGN_UP_ONE);
                        },
                      ),
                      const SizedBox(height: 40),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
