import 'package:crafty_bay/presentation/screens/splash_screen.dart';
import 'package:crafty_bay/presentation/utility/app_color.dart';
import 'package:flutter/material.dart';
import'package:get/get.dart';

class CraftBay extends StatelessWidget {
  const CraftBay({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: const SplashScreen(),
      theme: ThemeData(
        colorSchemeSeed: AppColor.primaryColor,
        progressIndicatorTheme: ProgressIndicatorThemeData(
          color: AppColor.primaryColor,
        )
      ),
    );
  }
}
