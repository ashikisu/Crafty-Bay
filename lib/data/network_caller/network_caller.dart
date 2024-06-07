import 'dart:convert';

import 'package:crafty_bay/app.dart';
import 'package:crafty_bay/presentation/screens/email_verification_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../models/network_response.dart';
import 'package:http/http.dart';

class NetworkCaller {
  static Future<NetworkResponse> getRequest({required String url}) async {
    final Response response = await get(Uri.parse(url));
    try {
      if (response.statusCode == 200) {
        final decodedData = jsonDecode(response.body);
        return NetworkResponse(
            responseCode: response.statusCode,
            isSuccess: true,
            responseData: decodedData);
      } else if (response.statusCode == 401) {
        _goToSignInScreen();
        return NetworkResponse(
          // todo handle 401
          responseCode: response.statusCode,
          isSuccess: false,
        );
      } else {
        return NetworkResponse(

          responseCode: response.statusCode,
          isSuccess: false,
        );
      }
    } on Exception catch (e) {
      return NetworkResponse(

          responseCode: -1,
          isSuccess: false,
          errorMessage: e.toString()
      );
    }
  }

  static _goToSignInScreen() {
    Navigator.push(CraftyBay.navigationKey.currentState!.context,
        MaterialPageRoute(builder: (context) => EmailVerificationScreen()));
  }
}
