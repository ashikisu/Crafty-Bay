import 'package:crafty_bay/widget/category_items.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../widget/back_to_home.dart';
import '../state_holders/main_bottom_nav_bar_controller.dart';

class CategoryListScreen extends StatefulWidget {
  const CategoryListScreen({super.key});

  @override
  State<CategoryListScreen> createState() => _CategoryListScreenState();
}

class _CategoryListScreenState extends State<CategoryListScreen> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop:false,
      onPopInvoked: (_){
        Get.find<MainBottomNavBarController>().backToHome();
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("Category List"),
          leading: const BackToHome(),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8),
          child: GridView.builder(
            itemCount: 16,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4 ),
              itemBuilder: (context,index){
                return FittedBox(child: const CategoryItems());

              }
          ),
        ),
      ),
    );
  }
}
