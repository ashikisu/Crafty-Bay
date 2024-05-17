import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../presentation/utility/asset_path.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(AssetPath.appLogoSvg);
  }
}
