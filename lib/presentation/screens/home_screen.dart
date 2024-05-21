import 'package:crafty_bay/presentation/utility/app_color.dart';
import 'package:crafty_bay/presentation/utility/asset_path.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../widget/app_bar_icon_button.dart';
import '../../widget/category_items.dart';
import '../../widget/home_carousel_slider.dart';
import '../../widget/product_card.dart';
import '../../widget/section_header.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _searchTexEditingController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              _buildSearchBoxTextField(),
              const SizedBox(height: 16),
              const HomeCarouselSlider(),
              const SizedBox(height: 16),
              SectionHeader(
                title: "All Category",
                onTapSeeAll: () {},
              ),
              _buildCategoryListView(),
              const SizedBox(height: 8),
              SectionHeader(
                title: "Popular Products",
                onTapSeeAll: () {},
              ),
              const SizedBox(
                height: 10,
              ),
              ProductCard()
            ],
          ),
        ),
      ),
    );
  }

  SizedBox _buildCategoryListView() {
    return SizedBox(
      height: 120,
      child: ListView.separated(
        itemCount: 8,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const CategoryItems();
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(
            width: 8,
          );
        },
      ),
    );
  }

  Widget _buildSearchBoxTextField() {
    return TextField(
      controller: _searchTexEditingController,
      decoration: InputDecoration(
          hintText: 'Search',
          fillColor: Colors.grey.shade200,
          filled: true,
          prefixIcon: const Icon(Icons.search),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(8)),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(8),
          )),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: SvgPicture.asset(AssetPath.appNavLogo),
      actions: [
        AppBarIconButton(
          onTap: () {},
          icon: Icons.person,
        ),
        const SizedBox(
          width: 8,
        ),
        AppBarIconButton(
          onTap: () {},
          icon: Icons.call,
        ),
        const SizedBox(
          width: 8,
        ),
        AppBarIconButton(
          onTap: () {},
          icon: Icons.notifications_active,
        ),
      ],
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _searchTexEditingController.dispose();
    super.dispose();
  }
}

