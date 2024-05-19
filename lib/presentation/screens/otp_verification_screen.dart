import 'package:crafty_bay/widget/applogo.dart';
import 'package:flutter/material.dart';


class OtpVerificationScreen extends StatefulWidget {
  final String email;
  const OtpVerificationScreen({super.key,required this.email});


  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  final TextEditingController _emailTextEditingController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    final textTheme=Theme.of(context).textTheme;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            const SizedBox(height: 100,),
            AppLogo(),
             const SizedBox(height: 16,),
             Text('Enter Otp Code',style:textTheme.titleLarge),
            const SizedBox(height: 4,),
            Text("A 4 digit OTP code has been sent to your email",style: textTheme.headlineSmall,),
            const SizedBox(height: 16,),



            const SizedBox(height: 16,),
            ElevatedButton(onPressed: (){

            },
                child: const Text("Next",
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
    _emailTextEditingController.dispose();
    super.dispose();
  }
}
