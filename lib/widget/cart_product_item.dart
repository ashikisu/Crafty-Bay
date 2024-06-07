import 'package:flutter/material.dart';
import 'package:item_count_number_button/item_count_number_button.dart';

import '../presentation/utility/app_color.dart';
import '../presentation/utility/asset_path.dart';

class CartProductItem extends StatefulWidget {
  const CartProductItem({super.key});

  @override
  State<CartProductItem> createState() => _CartProductItemState();
}

class _CartProductItemState extends State<CartProductItem> {
  int _counterValue=1 ;
  @override
  Widget build(BuildContext context) {
    return  Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(horizontal: 16,vertical: 4),
      surfaceTintColor: Colors.white,
      child:  Row(
        children: [
          _buildProductImage(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: _buildProductDetails(),
            ),
          )

        ],

      ),

    );
  }

  Widget _buildProductDetails() {
    return Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildProductName(),
                          _buildColorAndSize()
                        ],

                      ),
                    ),
                    IconButton(onPressed: (){}, icon: Icon(Icons.delete_outline_sharp))
                  ],
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('\$ 100', style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                        color: AppColor.primaryColor,

                      ),),
                      _buildCounter(),
                    ]

                ),
              ],
            );
  }

  Widget _buildColorAndSize() {
    return const Wrap(
                          spacing: 16,
                          children: [
                            Text("Color:Red", style: TextStyle(
                              color: Colors.black54,

                            ),),
                            Text("Size:XL",style:TextStyle(
                              color: Colors.black54,),

                            )
                          ],
                        );
  }

  Widget _buildCounter() {
    return ItemCount(
                      initialValue:_counterValue,
                      minValue: 1,
                      maxValue: 10,
                      decimalPlaces: 0,
                      color: AppColor.primaryColor,
                      onChanged: (value) {
                        // Handle counter value changes
                        _counterValue=value as int;
                        setState(() {

                        });
                      },
                    );
  }

  Widget _buildProductName() {
    return Text ('Nike Shoe 212458KG',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                              fontWeight: FontWeight.w600
                          ),);
  }

  Widget _buildProductImage() {
    return Padding(
          padding:const EdgeInsets.all(8),
          child: Image.asset(AssetPath.shoeImage,
            width: 120,
          ),
        );
  }
}

