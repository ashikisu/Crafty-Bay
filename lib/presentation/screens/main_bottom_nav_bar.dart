import 'package:crafty_bay/presentation/screens/home_screen.dart';
import 'package:crafty_bay/presentation/screens/wish_list_screen.dart';
import 'package:crafty_bay/presentation/state_holders/main_bottom_nav_bar_controller.dart';
import 'package:crafty_bay/presentation/utility/app_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'category_list_screen.dart';

class MainBottomNavBar extends StatefulWidget {
  const MainBottomNavBar({super.key});

  @override
  State<MainBottomNavBar> createState() => _MainBottomNavBarState();
}

class _MainBottomNavBarState extends State<MainBottomNavBar> {
  final MainBottomNavBarController _navBarController =
      Get.find<MainBottomNavBarController>();
  List<Widget> _screen=const [
    HomeScreen(),
    CategoryListScreen(),
    HomeScreen(),
    WIshListScreen()
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<MainBottomNavBarController>(
        builder: (_){
          return _screen[_navBarController.selectedIndex];
      }
      ),
      bottomNavigationBar: GetBuilder<MainBottomNavBarController>(
        builder: (_) {
          return BottomNavigationBar(
            currentIndex: _navBarController.selectedIndex,
            onTap: _navBarController.changedIndex,
            selectedItemColor: AppColor.primaryColor,
            unselectedItemColor: Colors.grey,
            showUnselectedLabels: true,

            items:const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.dashboard), label: 'Category'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart), label: 'Cart'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite_outline_rounded), label: 'Wishlist'),
            ],
          );
        }
      ),
    );
  }
}
