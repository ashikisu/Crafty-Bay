import 'package:crafty_bay/widget/applogo.dart';
import 'package:flutter/material.dart';
import 'package:crafty_bay/app.dart';


class EmailVerificationScreen extends StatefulWidget {
  const EmailVerificationScreen({super.key});

  @override
  State<EmailVerificationScreen> createState() => _EmailVerificationScreenState();
}

class _EmailVerificationScreenState extends State<EmailVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    final textTheme=Theme.of(context).textTheme;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AppLogo(),
           const SizedBox(height: 16,),
           Text('Welcome Back',style:textTheme.titleLarge),
          const SizedBox(height: 4,),
          Text("Enter Your Email Adress",style: textTheme.headlineSmall,),
          TextFormField(

          ),
        ],
      ),
    );
  }
}
