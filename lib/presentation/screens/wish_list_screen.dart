import 'package:crafty_bay/widget/product_card.dart';
import 'package:flutter/material.dart';
class WIshListScreen extends StatefulWidget {
  const WIshListScreen({super.key});

  @override
  State<WIshListScreen> createState() => _WIshListScreenState();
}

class _WIshListScreenState extends State<WIshListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Wishlist"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4,vertical: 4),
        child: GridView.builder(
            itemCount: 16,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 0.8,
            ),
            itemBuilder: (context, index) {
              return  FittedBox(child: ProductCard( showWishlist: false,));
            }),
      ),
    );
  }
}
