import 'package:crafty_bay/widget/category_items.dart';
import 'package:flutter/material.dart';

class CategoryListScreen extends StatefulWidget {
  const CategoryListScreen({super.key});

  @override
  State<CategoryListScreen> createState() => _CategoryListScreenState();
}

class _CategoryListScreenState extends State<CategoryListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Category List"),
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
    );
  }
}
