import 'package:crafty_bay/widget/product_image_carousel_slider.dart';
import 'package:crafty_bay/widget/size_picker.dart';
import 'package:crafty_bay/widget/wish_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:item_count_number_button/item_count_number_button.dart';
import '../../widget/color_picker.dart';
import '../utility/app_color.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  int _counterValue = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(" Product Details"),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const ProductImageCarouselSlider(),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                                child: Text("Nike Shoe 2024 Latest Edition 88AFE45",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black.withOpacity(0.8)))),
                            _buildCounter(),
                          ],
                        ),
                        _buildReviewSection(),
                        Text(
                          'Color',
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        ColorPicker(colors: [
                          Colors.black,
                          Colors.red,
                          Colors.amber,
                          Colors.blue,
                          Colors.purple
                        ], onChange: (Color selectColor) {}),
                        SizedBox(
                          height: 16,
                        ),
                        const Text(
                          'Size',
                          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        SizePicker(
                            onChange: (String s) {},
                            sizes: const ['M', 'L', 'S', 'XL', 'XXL']),
                        SizedBox(
                          height: 16,
                        ),
                        const Text(
                          'Description',
                          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        const Text('''
                        Lorem Ipsum is simply dummy text of the printing
                        and typesetting industry. Lorem Ipsum has been the 
                        industry's standard dummy text ever since the 1500s, 
                        when an unknown printer took a galley of type and
                        scrambled it to make a type specimen book.
                        It has survived not only five centuries, 
                        but also the leap into electronic typesetting,
                        remaining essentially unchanged. It was popularised
                        in the 1960s with the release of Letraset sheets 
                        containing Lorem Ipsum passages, and more recently
                        with desktop publishing software like Aldus PageMaker 
                        including versions of Lorem Ipsum
                        
                        ''')
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          _buildAddToCart(),


        ],
      ),
    );
  }
  Widget _buildAddToCart() {
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
          _buildPriceWidget(),
          SizedBox(
            width: 120,
            child: ElevatedButton(
              onPressed: () {},
              child: Text("Add To Cart"),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPriceWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Price",style: TextStyle(
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



  Wrap _buildReviewSection() {
    return Wrap(
      spacing: 5,
      alignment: WrapAlignment.start,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        Wrap(
          children: [
            Icon(
              Icons.star,
              color: Colors.amber,
              size: 20,
            ),
            Text("3.5"),
          ],
        ),
        TextButton(onPressed: () {}, child: const Text('Reviews')),
        WishButton(),
      ],
    );
  }

  Widget _buildCounter() {
    return ItemCount(
      initialValue: _counterValue,
      minValue: 1,
      maxValue: 10,
      decimalPlaces: 0,
      color: AppColor.primaryColor,
      onChanged: (value) {
        // Handle counter value changes
        _counterValue = value as int;
        setState(() {});
      },
    );
  }

}