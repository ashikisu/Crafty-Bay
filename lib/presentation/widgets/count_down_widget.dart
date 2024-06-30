import 'dart:async';
import 'package:flutter/material.dart';
class OtpCountdownTimer extends StatefulWidget {
  @override
  _OtpCountdownTimerState createState() => _OtpCountdownTimerState();
}

class _OtpCountdownTimerState extends State<OtpCountdownTimer> {
  int _remainingSeconds = 100;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_remainingSeconds > 0) {
          _remainingSeconds--;
        } else {
          _timer?.cancel();
          // Handle timer completion (e.g., show error message)
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text('OTP expires in:'),
        SizedBox(width: 5),
        Text(
          _remainingSeconds.toString(),
          style: TextStyle(color: Colors.red),
        ),
      ],
    );
  }
}