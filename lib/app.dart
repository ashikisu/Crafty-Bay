import 'package:crafty_bay/presentation/screens/splash_screen.dart';
import 'package:crafty_bay/presentation/utility/app_color.dart';
import 'package:flutter/material.dart';
import'package:get/get.dart';

class CraftyBay extends StatefulWidget {
  const CraftyBay({super.key});

  @override
  State<CraftyBay> createState() => _CraftyBayState();
}

class _CraftyBayState extends State<CraftyBay> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: const SplashScreen(),
      theme: ThemeData(
        colorSchemeSeed: AppColor.primaryColor,
        progressIndicatorTheme: ProgressIndicatorThemeData(
          color: AppColor.primaryColor,
        ),
        textTheme: TextTheme(
            headlineLarge:const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),

          headlineSmall:const TextStyle(
            fontSize: 14,
            color: Colors.blueGrey
          ) ,

        ),
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(

          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),

        )

      ),
    );
  }
}
