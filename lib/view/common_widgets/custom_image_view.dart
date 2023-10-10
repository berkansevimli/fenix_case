import 'dart:io';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:fenix_interview/ui/size_config.dart';
import 'package:fenix_interview/ui/utilities/asset_utils.dart';
import 'package:fenix_interview/view/common_widgets/custom_svg_view.dart';
import 'package:flutter/material.dart';

class CustomImageView extends StatelessWidget {
  final String? imageUrl;
  final bool? isFromAssets;
  final bool? isFromFile;
  final double? height;
  final double? width;
  final BoxFit? fit;
  final Color? color;
  final BorderRadius? radius;

  const CustomImageView(
      {Key? key,
      this.imageUrl,
      this.isFromAssets = true,
      this.isFromFile = false,
      this.height,
      this.width,
      this.fit,
      this.radius,
      this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: radius ?? BorderRadius.circular(0),
        // color: ColorUtilities.primary_050,
      ),
      child: ClipRRect(
          borderRadius: radius ?? BorderRadius.circular(0),
          child: isFromAssets!
              ? Image.asset(
                  imageUrl!,
                  height: height,
                  width: width,
                  color: color,
                  fit: fit ?? BoxFit.contain,
                  errorBuilder:
                      (BuildContext context, Object obj, StackTrace? st) =>
                          Image.asset(
                    AssetUtilities.errorSvg,
                    height: height,
                    width: width,
                    fit: fit ?? BoxFit.contain,
                  ),
                )
              : isFromFile!
                  ? Image.file(File(imageUrl!),
                      height: height,
                      width: width,
                      fit: fit ?? BoxFit.contain,
                      errorBuilder:
                          (BuildContext context, Object obj, StackTrace? st) =>
                              Image.asset(
                                AssetUtilities.errorSvg,
                                height: height,
                                width: width,
                                fit: fit ?? BoxFit.contain,
                              ))
                  : CachedNetworkImage(
                      height: height,
                      width: width,
                      imageUrl: imageUrl ?? "",
                      color: color,
                      fit: fit ?? BoxFit.contain,
                      placeholder: (context, url) => Padding(
                        padding: const EdgeInsets.all(32.0),
                        child: SizedBox(
                            height: 48,
                            width: 48,
                            child: Image.asset('assets/icons/loading.gif')),
                      ),
                      errorWidget: (context, url, error) => CustomSvgView(
                        imageUrl: AssetUtilities.movieSvg,
                        takeDefaultColor: true,
                        isFromAssets: true,
                        height: getProportionateScreenWidth(64),
                        width: getProportionateScreenWidth(64),
                      ),
                    )),
    );
  }
}
