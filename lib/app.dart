import 'package:crafty_bay/presentation/screens/email_verification_screen.dart';
import 'package:crafty_bay/presentation/screens/home_screen.dart';
import 'package:crafty_bay/presentation/screens/otp_verification_screen.dart';
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
      home: const EmailVerificationScreen(),
      theme: ThemeData(
        colorSchemeSeed: AppColor.primaryColor,
        progressIndicatorTheme: ProgressIndicatorThemeData(
          color: AppColor.primaryColor,
        ),
        textTheme: _textTheme(),
        inputDecorationTheme: _inputDecorationTheme(),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            fixedSize: const Size.fromWidth(double.maxFinite),
            padding: const EdgeInsets.symmetric(vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
            backgroundColor: AppColor.primaryColor,
            foregroundColor: AppForGroundColor.appForeGroundColor,
            textStyle: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            )
          )
        )

      ),
    );
  }


  TextTheme _textTheme()=> const TextTheme(
    headlineLarge:const TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),

    headlineSmall:const TextStyle(
        fontSize: 16,
        color: Colors.blueGrey
    ) ,

  );

  InputDecorationTheme _inputDecorationTheme()=>InputDecorationTheme(
   hintStyle: TextStyle(
     color: Colors.grey,
     fontWeight: FontWeight.w400,
   ),

    border:_outlineInputBorder,
    enabledBorder: _outlineInputBorder,
    focusedBorder: _outlineInputBorder,
    errorBorder: _outlineInputBorder.copyWith(
      borderSide: const BorderSide(
        color: Colors.red,
      )
    ),
    contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),

  );
  final OutlineInputBorder _outlineInputBorder= OutlineInputBorder(
      borderSide: BorderSide(
        color: AppColor.primaryColor,
      )

  );
}
