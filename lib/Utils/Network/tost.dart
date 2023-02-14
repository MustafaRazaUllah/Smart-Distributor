
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smartdistributor/Constants/color.dart';

class Toast {
  success({required massage}) {
    return Get.snackbar(
      "Success",
      massage,
      icon: const Icon(
        Icons.check_circle,
        color: Colors.white,
      ),
      snackPosition: SnackPosition.TOP,
      backgroundColor: AppColors.success, //.withOpacity(0.6),
      borderRadius: 20,
      margin: const EdgeInsets.all(15),
      colorText: AppColors.whiteText,
      duration: const Duration(seconds: 3),
    );
  }

  error({required massage}) {
    if (Get.isSnackbarOpen == false) {
      return Get.snackbar(
        "Error",
        massage,
        icon: const Icon(
          Icons.error,
          color: Colors.white,
        ),
        snackPosition: SnackPosition.TOP,
        backgroundColor: AppColors.error, //.withOpacity(0.6),
        borderRadius: 20,
        margin: const EdgeInsets.all(15),
        colorText: AppColors.whiteText,
        duration: const Duration(seconds: 3),
      );
    }
  }
}
