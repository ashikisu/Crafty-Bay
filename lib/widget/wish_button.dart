import 'package:flutter/material.dart';

import '../presentation/utility/app_color.dart';

class WishButton extends StatelessWidget {
  const WishButton({super.key,this.showWishList=true});
  final bool showWishList;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: showWishList,
      replacement: _getIconButton(Icons.delete_outline),
      child: _getIconButton(Icons.favorite_outline_rounded),

    );
  }
  Widget _getIconButton(IconData icon) {
    return Card(
      color: AppColor.primaryColor,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(2)),

      child: Padding(
        padding: EdgeInsets.all(2.0),
        child: Icon(


          icon,
          color: Colors.white,
        ),
      ),
    );
  }
}
