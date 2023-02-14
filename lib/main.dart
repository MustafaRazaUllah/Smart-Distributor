import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smartdistributor/Constants/app_pages.dart';
import 'package:smartdistributor/Constants/app_routes.dart';
import 'package:smartdistributor/Constants/color.dart';
import 'package:smartdistributor/Modules/Splash/View/splash_view.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SHOWUP-TO-MEETUP',
      theme: ThemeData(
        colorScheme:
            ThemeData().colorScheme.copyWith(primary: AppColors.primary),
      ),
      builder: (context, child) {
        return ScrollConfiguration(
          behavior: MyBehavior(),
          child: child!,
        );
      },
      getPages: AppPages.routes,
      initialRoute: AppRoutes.SPLASH_SCREEN,
    );
  }
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}
