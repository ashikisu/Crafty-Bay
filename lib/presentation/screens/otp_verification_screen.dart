import 'package:crafty_bay/presentation/screens/complete_profile_screen.dart';
import 'package:crafty_bay/presentation/utility/app_color.dart';
import 'package:crafty_bay/widget/applogo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpVerificationScreen extends StatefulWidget {
  final String email;

  const OtpVerificationScreen({super.key, required this.email});

  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  final TextEditingController _otpTextEditingController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 100,
                ),
                AppLogo(),
                const SizedBox(
                  height: 16,
                ),
                Text('Enter Otp Code', style: textTheme.titleLarge),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  "A 4 digit OTP code has been sent to your email",
                  style: textTheme.headlineSmall,
                ),
                const SizedBox(
                  height: 24,
                ),
                _buildPinField(),
                const SizedBox(
                  height: 16,
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.to(()=>const CompleteProfileScreen());
                  },
                  child: const Text(
                    "Next",
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                _buildCodeResetMessage(),
                TextButton(
                  onPressed: () {},
                  child: Text("Resend Code"),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCodeResetMessage() {
    return RichText(
      text: TextSpan(
          style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.w600,
          ),
          children: [
            TextSpan(text: 'This code will expire in '),
            TextSpan(
                style: TextStyle(
                  color: AppColor.primaryColor,
                ),
                text: '100s')
          ]),
    );
  }

  Widget _buildPinField() {
    return PinCodeTextField(
      length: 6,
      obscureText: false,
      animationType: AnimationType.fade,
      keyboardType: TextInputType.number,
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(5),
        fieldHeight: 50,
        fieldWidth: 40,
        activeFillColor: Colors.white,
        inactiveFillColor: Colors.transparent,
        selectedFillColor: Colors.white,
      ),
      animationDuration: Duration(milliseconds: 300),
      backgroundColor: Colors.blue.shade50,
      enableActiveFill: true,
      controller: _otpTextEditingController,
      appContext: context,
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _otpTextEditingController.dispose();
    super.dispose();
  }
}
