import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:smartdistributor/Constants/color.dart';
import 'package:smartdistributor/Modules/Auth/View%20Model/auth_viewmodel.dart';
import 'package:smartdistributor/Utils/Text%20Fields/textfield.dart';
import 'package:smartdistributor/Utils/Theme/app_config.dart';
import 'package:smartdistributor/Utils/Theme/app_text.dart';
import 'package:smartdistributor/Utils/buttons/dg_main_button.dart';
import 'package:smartdistributor/Utils/buttons/dg_outline_button.dart';

class LoginView extends StatelessWidget {
  LoginView({super.key});

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
          child: Obx(
            () => ListView(
              padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.screenWidth * 0.05,
              ),
              shrinkWrap: true,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(
                    SizeConfig.screenWidth * 0.27,
                    SizeConfig.screenWidth * 0.2,
                    SizeConfig.screenWidth * 0.27,
                    0,
                  ),
                  child: Image.asset(
                    "assets/applogos/FINALLOGO.png",
                  ),
                ),
                SizedBox(height: SizeConfig.screenWidth * 0.15),
                Column(
                  children: [
                    AppText(
                      text: "LOGIN",
                      fontSize: SizeConfig.screenWidth * 0.09,
                      fontWeight: FontWeight.w600,
                      color: AppColors.secondary,
                      textAlign: TextAlign.center,
                    ),
                    AppText(
                      text: "With Email and Password".toUpperCase(),
                      fontSize: SizeConfig.screenWidth * 0.03,
                      fontWeight: FontWeight.w300,
                      color: AppColors.secondary,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                SizedBox(height: SizeConfig.screenWidth * 0.15),
                Form(
                  key: _serviceVM.loginFormKey,
                  child: Column(
                    children: [
                      AppTextField.emailField(
                        context,
                        hintText: 'Email',
                        controller: _serviceVM.emailLoginCont.value,
                      ),
                      SizedBox(height: SizeConfig.screenWidth * 0.07),
                      AppTextField.passwordField(
                        context,
                        hintText: 'Password',
                        controller: _serviceVM.passwordLoginCont.value,
                        isVisiable: _serviceVM.loginPassVisible.value,
                        callback: () {
                          _serviceVM.loginPassVisible.value =
                              !_serviceVM.loginPassVisible.value;
                        },
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      _serviceVM.navigateToForgot();
                    },
                    child: AppText(
                      text: "Forgot Password",
                      fontSize: SizeConfig.screenWidth * 0.03,
                    ),
                  ),
                ),
                SizedBox(height: SizeConfig.screenWidth * 0.1),
                DgMainButton(
                  text: "Login",
                  isFullWidth: true,
                  onPressed: () {
                    _serviceVM.onLogin();
                  },
                ),
                SizedBox(height: SizeConfig.screenWidth * 0.05),
                DgOutLineButton(
                  text: "Register",
                  isFullWidth: true,
                  onPressed: () {
                    _serviceVM.navigateToRegister();
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
