import 'package:fenix_interview/ui/utilities/color_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// THIS IS THE CLASS FOR SHOW SVG...
class CustomSvgView extends StatelessWidget {
  final String? imageUrl;
  final bool? isFromAssets;
  final double? height;
  final double? width;
  final Color? svgColor;
  final bool? takeDefaultColor;

  const CustomSvgView(
      {Key? key,
      this.imageUrl,
      this.isFromAssets,
      this.height,
      this.width,
      this.svgColor,
      this.takeDefaultColor = false})
      : assert(imageUrl != "" && imageUrl != null);

  @override
  Widget build(BuildContext context) {
    return isFromAssets ?? true
        ? SvgPicture.asset(
            imageUrl!,
            height: height ?? 15,
            width: width ?? 15,
            // ignore: deprecated_member_use
            color:
                takeDefaultColor! ? null : svgColor ?? ColorUtilities.text_900,
          )
        : SvgPicture.network(
            imageUrl!,
            height: height ?? 15,
            width: width ?? 15,
            // ignore: deprecated_member_use
            color:
                takeDefaultColor! ? null : svgColor ?? ColorUtilities.text_900,
          );
  }
}
