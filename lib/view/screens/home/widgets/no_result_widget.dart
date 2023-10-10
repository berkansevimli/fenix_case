import 'package:fenix_interview/ui/size_config.dart';
import 'package:fenix_interview/ui/utilities/asset_utils.dart';
import 'package:fenix_interview/ui/utilities/color_utils.dart';
import 'package:fenix_interview/view/common_widgets/custom_svg_view.dart';
import 'package:flutter/material.dart';

class NoResultWidget extends StatelessWidget {
  const NoResultWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomSvgView(
              height: getProportionateScreenHeight(100),
              width: getProportionateScreenWidth(100),
              imageUrl: AssetUtilities.errorSvg,
              takeDefaultColor: true,
            ),
            Text("No movies found!",
                style: TextStyle(
                    fontSize: getProportionateScreenWidth(16),
                    color: ColorUtilities.dark_700)),
          ],
        ),
      ),
    );
  }
}
