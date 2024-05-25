import 'package:crafty_bay/widget/product_card.dart';
import 'package:flutter/material.dart';

import '../../widget/category_items.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({super.key, this.categoryName});

  final categoryName;

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.categoryName),
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
              return FittedBox(child:  ProductCard());
            }),
      ),
    );
  }
}
