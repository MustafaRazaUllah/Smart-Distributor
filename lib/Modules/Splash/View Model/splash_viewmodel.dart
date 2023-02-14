import 'dart:async';

import 'package:get/get.dart';
import 'package:smartdistributor/Constants/app_routes.dart';

class SplashViewModel extends GetxController {
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    onSplashMethod();
  }

  RxDouble splashCounter = 0.0.obs;

  void onSplashMethod() {
    Timer.periodic(const Duration(milliseconds: 35), (timer) {
      print(timer.tick);
      splashCounter.value++;
      if (splashCounter.value == 100) {
        timer.cancel();
        _navigateNextScreen();
      }
    });
  }

  void _navigateNextScreen() {
    Get.offAllNamed(AppRoutes.LOGIN);
  }
}
