import 'package:crafty_bay/presentation/state_holders/main_bottom_nav_bar_controller.dart';
import 'package:crafty_bay/presentation/utility/app_color.dart';
import 'package:crafty_bay/widget/cart_product_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:item_count_number_button/item_count_number_button.dart';

import '../../widget/back_to_home.dart';
import '../utility/asset_path.dart';

class CartListScreen extends StatefulWidget {
  const CartListScreen({super.key});

  @override
  State<CartListScreen> createState() => _CartListScreenState();
}

class _CartListScreenState extends State<CartListScreen> {
  int _counterValue = 1;

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (_) {
        Get.find<MainBottomNavBarController>().backToHome();
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Cart"),
          leading: const BackToHome(),
        ),
        body: Column(
          children: [
            Expanded(
                child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return CartProductItem();
                    })),
            _buildCheckoutWidget()
          ],
        ),
      ),
    );
  }

  Widget _buildCheckoutWidget() {
    return Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
                color: AppColor.primaryColor.withOpacity(0.1),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(1),
                    topRight: Radius.circular(16))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildTotalPrice(),
                SizedBox(
                  width: 100,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Checkout"),
                  ),
                ),
              ],
            ),
          );
  }

  Widget _buildTotalPrice() {
    return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Total Price",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,

                  ),),
                  Text("\$1200",style: TextStyle(
                    fontSize: 24,
                    color: AppColor.primaryColor,
                    fontWeight: FontWeight.bold
                  ),),
                ],

              );
  }
}
