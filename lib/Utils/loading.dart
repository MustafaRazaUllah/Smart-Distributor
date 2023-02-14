import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smartdistributor/Constants/color.dart';
import 'package:smartdistributor/Utils/Theme/app_config.dart';


class loading extends StatefulWidget {
  const loading({
    super.key,
  });

  @override
  State<loading> createState() => _loadingState();
}

class _loadingState extends State<loading> with SingleTickerProviderStateMixin {
  late final AnimationController _controller =
      AnimationController(vsync: this, duration: Duration(seconds: 1))
        ..repeat();

  // final String pageRouteType = Get.arguments[0];
  final String pageRouteName = Get.arguments;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(milliseconds: 1500), () {
      navigationMethod();
    });
  }

  void navigationMethod() {
    // if (pageRouteType == "TO") {
    //   Get.toNamed(pageRouteName);
    // } else if (pageRouteType == "OFF") {
    Get.offNamed(pageRouteName);
    // } else if (pageRouteType == "OFFALL") {
    //   Get.offAllNamed(pageRouteName);
    // } else if (pageRouteType == "GOBACK") {
    //   Get.back();
    // } else {
    //   print("Not Route Find");
    // }
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: SizedBox.expand(
        child: Stack(
          alignment: Alignment.center,
          children: [
            SizedBox.expand(
              child: Image.asset(
                'assets/splash.png',
                fit: BoxFit.cover,
              ),
            ),
            Container(
              width: SizeConfig.screenWidth,
              height: SizeConfig.screenHeight,
              foregroundDecoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  stops: [0.1, 0.7],
                  colors: [
                    AppColors.primary.withOpacity(0.65),
                    AppColors.secondary.withOpacity(0.65),
                  ],
                ),
              ),
            ),
            Image.asset(
              "assets/roundedlogo.png",
              width: SizeConfig.screenWidth * 0.5,
              height: SizeConfig.screenWidth * 0.5,
            ),
            AnimatedBuilder(
              animation: _controller,
              builder: (_, child) {
                return Transform.rotate(
                  angle: _controller.value * 2 * math.pi,
                  child: child,
                );
              },
              child: Image.asset(
                "assets/outerloading.png",
                width: SizeConfig.screenWidth * 0.58,
                height: SizeConfig.screenWidth * 0.58,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    if (_controller.isAnimating) {
      _controller.dispose();
    }
    // AnimationController.unbounded(vsync: this)
    //   ..dispose();
    // _controller.stop();
  }
}
