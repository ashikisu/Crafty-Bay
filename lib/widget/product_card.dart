import 'package:flutter/material.dart';

import '../presentation/utility/app_color.dart';
import '../presentation/utility/asset_path.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key, this.showWishlist = true
  });

  final bool showWishlist;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      surfaceTintColor: Colors.white,
      color: Colors.white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8),
              topRight: Radius.circular(8))),
      child: SizedBox(
        width: 140,
        child: Column(
          children: [
            Container(
              width: 140,
              decoration: BoxDecoration(
                color: AppColor.primaryColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                  padding: EdgeInsets.all(8),
                  child: Image.network(AssetPath.shoeImage)),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Nike Sports Shile 320k Speicial Edition",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Wrap(
                    spacing: 5,
                    alignment: WrapAlignment.start,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Text(
                        "\$30",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: AppColor.primaryColor,
                        ),
                      ),
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
                      _buildAddToWishlist()
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildAddToWishlist() {
    return Visibility(
      visible: showWishlist,
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