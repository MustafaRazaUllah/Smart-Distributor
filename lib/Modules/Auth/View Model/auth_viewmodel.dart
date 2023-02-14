import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smartdistributor/Constants/app_routes.dart';

class AuthViewModel extends GetxController {
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  /* = = = = = = = = = LOGIN = = = = = = = = = = =*/
  RxBool loginPassVisible = false.obs;
  Rx<TextEditingController> emailLoginCont =
      TextEditingController(text: "mustafa@smart.com").obs;
  Rx<TextEditingController> passwordLoginCont =
      TextEditingController(text: "123123123").obs;
  final loginFormKey = GlobalKey<FormState>();

  void navigateToForgot() {
    Get.toNamed(AppRoutes.FORGOT);
  }

  void navigateToRegister() {
    Get.toNamed(AppRoutes.SIGN_UP);
  }

  void onLogin() {
    if (loginFormKey.currentState!.validate()) {
      print('onLogin');
      Get.offAllNamed(AppRoutes.ROUTE_SCREEN);
    }
  }

  /* = = = = = = = = = LOGIN = = = = = = = = = = =*/
  /*





  */

  /* = = = = = = = = = FORGOT = = = = = = = = = = =*/

  Rx<TextEditingController> emailForgotCont = TextEditingController().obs;
  final forgotFormKey = GlobalKey<FormState>();

  void navigateToBackLogin() {
    Get.back();
  }

  void onForgot() {
    if (forgotFormKey.currentState!.validate()) {
      print('onLogin');
    }
  }

  /* = = = = = = = = = FORGOT = = = = = = = = = = =*/
  /*





  */

  /* = = = = = = = = = REGISTRATION = = = = = = = = = = =*/

  Rx<TextEditingController> fistNameRegistrationCont =
      TextEditingController().obs;
  Rx<TextEditingController> lastNameRegistrationCont =
      TextEditingController().obs;
  Rx<TextEditingController> emailRegistrationCont = TextEditingController().obs;
  Rx<TextEditingController> rideExperienceRegCont = TextEditingController().obs;
  Rx<TextEditingController> passwordRegCont = TextEditingController().obs;
  Rx<TextEditingController> confirmPasswordRegCont =
      TextEditingController().obs;
  Rx<TextEditingController> userImageRegCont = TextEditingController().obs;
  Rx<TextEditingController> frontCNICRegCont = TextEditingController().obs;
  Rx<TextEditingController> backCNICRegCont = TextEditingController().obs;
  Rx<TextEditingController> frontLicenceRegCont = TextEditingController().obs;
  Rx<TextEditingController> backLicenceRegCont = TextEditingController().obs;

  final registrationFormKey = GlobalKey<FormState>();

  void onRegistration() {
    // if (forgotFormKey.currentState!.validate()) {
    print('onRegistration');
    Get.offAllNamed(AppRoutes.UNDER_REVIEW);
    // }
  }

  /* = = = = = = = = = REGISTRATION = = = = = = = = = = =*/
  /*





  */
}
