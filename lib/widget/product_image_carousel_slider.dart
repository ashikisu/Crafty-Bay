import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../presentation/utility/app_color.dart';

class ProductImageCarouselSlider extends StatefulWidget {
  const ProductImageCarouselSlider({
    super.key,
  });

  @override
  State<ProductImageCarouselSlider> createState() => _ProductImageCarouselSliderState();
}

class _ProductImageCarouselSliderState extends State<ProductImageCarouselSlider> {
  final ValueNotifier<int> _selectedPageIndex = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            _buildCarouselSlider(),
            Positioned
              (
              child: _buildDotIndicator(),
              bottom: 8,
              left: 0,
              right: 0,

            ),

          ],
        )

      ],
    );
  }

  Widget _buildDotIndicator() {
    return ValueListenableBuilder(
          valueListenable: _selectedPageIndex,
          builder: (context, currentPage, _) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < 5; i++)
                  Container(
                    width: 12,
                    height: 12,
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    decoration: BoxDecoration(
                      color: i==currentPage? AppColor.primaryColor:Colors.white,
                      border: Border.all(

                          color:i==currentPage?AppColor.primaryColor:Colors.white,
                          width: 1,
                      ),
                      borderRadius: BorderRadius.circular(50),
                    ),
                  )
              ],
            );
          });
  }

  Widget _buildCarouselSlider() {
    return CarouselSlider(
        options: CarouselOptions(
            height: 220.0, viewportFraction: 1, onPageChanged: (index, _) {
          _selectedPageIndex.value= index;
        }),
        items: [1, 2, 3, 4, 5].map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade300,),
                  alignment: Alignment.center,
                  child: Text(
                    'text $i',
                    style: const TextStyle(fontSize: 16.0),
                  ));
            },
          );
        }).toList(),
      );
  }
}
