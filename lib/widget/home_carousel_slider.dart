import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../data/models/slider_data.dart';
import '../presentation/utility/app_color.dart';

class HomeCarouselSlider extends StatefulWidget {
  const HomeCarouselSlider({
    super.key, required this.sliderDataList,
  });
 final List<SliderData> sliderDataList;
  @override
  State<HomeCarouselSlider> createState() => _HomeCarouselSliderState();
}

class _HomeCarouselSliderState extends State<HomeCarouselSlider> {
  final ValueNotifier<int> _selectedPageIndex = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildCarouselSlider(),
        const SizedBox(
          height: 8,
        ),
        _buildDotIndicator()
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
                for (int i = 0; i < widget.sliderDataList.length; i++)
                  Container(
                    width: 15,
                    height: 15,
                    margin: const EdgeInsets.symmetric(horizontal: 2),
                    decoration: BoxDecoration(
                      color: i==currentPage? AppColor.primaryColor:null,
                      border: Border.all(color: Colors.grey, width: 1),
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
            height: 100.0, viewportFraction: 1, onPageChanged: (index, _) {
          _selectedPageIndex.value= index;
        }),
        items: widget.sliderDataList.map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(
                      color: AppColor.primaryColor,
                      borderRadius: BorderRadius.circular(8)),
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
