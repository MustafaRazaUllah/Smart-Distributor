import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:smartdistributor/Constants/color.dart';
import 'package:smartdistributor/Modules/Splash/View%20Model/splash_viewmodel.dart';
import 'package:smartdistributor/Utils/Theme/app_config.dart';

class SplashView extends StatelessWidget {
  SplashView({super.key});

  final _serviceVM = Get.find<SplashViewModel>();

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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: SizeConfig.screenWidth * 0.3),
                  child: Image.asset("assets/applogos/FINALLOGO.png"),
                ),
              ),
              Obx(
                () => LinearPercentIndicator(
                  width: SizeConfig.screenWidth - 60,
                  lineHeight: 4.0,
                  percent: _serviceVM.splashCounter.value * 0.01,
                  barRadius: const Radius.circular(100),
                  alignment: MainAxisAlignment.center,
                  padding: EdgeInsets.zero,
                  backgroundColor: AppColors.grey1,
                  progressColor: AppColors.secondary,
                ),
              ),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }

}
