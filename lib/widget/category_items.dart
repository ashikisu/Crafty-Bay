import 'package:flutter/material.dart';

import '../presentation/utility/app_color.dart';

class CategoryItems extends StatelessWidget {
  const CategoryItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(16),
          child: Icon(
            Icons.desktop_mac_outlined,
            size: 40,
          ),
          decoration: BoxDecoration(
              color: AppColor.primaryColor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(16)
          ),
        ),
        const SizedBox(height: 8,),
        const Text("Electronics",
          style: TextStyle(
            fontSize: 18,
            color: AppColor.primaryColor,
            fontWeight: FontWeight.w400,
            letterSpacing: 0.4,
          ),
        ),
      ],
    );
  }
}
