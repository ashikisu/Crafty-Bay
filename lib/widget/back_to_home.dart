import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../presentation/state_holders/main_bottom_nav_bar_controller.dart';

class BackToHome extends StatelessWidget {
  const BackToHome({super.key});

  @override
  Widget build(BuildContext context) {
    return  IconButton(
      onPressed: (){
        Get.find<MainBottomNavBarController>().backToHome();
      },
      icon: const Icon(Icons.arrow_back_ios_sharp),
    );
  }
}
