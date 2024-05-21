import 'package:crafty_bay/presentation/screens/otp_verification_screen.dart';
import 'package:crafty_bay/widget/applogo.dart';
import 'package:flutter/material.dart';
import 'package:crafty_bay/app.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


class EmailVerificationScreen extends StatefulWidget {
  const EmailVerificationScreen({super.key});

  @override
  State<EmailVerificationScreen> createState() => _EmailVerificationScreenState();
}

class _EmailVerificationScreenState extends State<EmailVerificationScreen> {
  final TextEditingController _emailTextEditingController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    final textTheme=Theme.of(context).textTheme;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: [
                const SizedBox(height: 100,),
                AppLogo(),
                 const SizedBox(height: 16,),
                 Text('Welcome Back',style:textTheme.titleLarge),
                const SizedBox(height: 4,),
                Text("Enter Your Email Address",style: textTheme.headlineSmall,),
                const SizedBox(height: 16,),
                TextFormField(
                  controller: _emailTextEditingController,
                  decoration: const InputDecoration(
                    hintText: "Email",
                  ),
          
                ),
                const SizedBox(height: 16,),
                ElevatedButton(onPressed: (){
                  Get.to(()=>OtpVerificationScreen(email:_emailTextEditingController.text));
          
                },
                    child: const Text("Next",
                    ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  @override
  void dispose() {
    // TODO: implement dispose
    _emailTextEditingController.dispose();
    super.dispose();
  }
}
