import 'package:fenix_interview/ui/size_config.dart';
import 'package:fenix_interview/ui/utilities/color_utils.dart';
import 'package:fenix_interview/view/common_widgets/custom_image_view.dart';
import 'package:fenix_interview/view/screens/home/view_model/home_view_model.dart';
import 'package:flutter/material.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({
    super.key,
    required this.viewModel,
  });

  final HomeViewModel viewModel;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: GridView.count(
      crossAxisCount: 2,
      children: viewModel.movies
          .map((e) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    decoration: BoxDecoration(
                        color: ColorUtilities.light_500,
                        borderRadius: BorderRadius.circular(
                            getProportionateScreenWidth(10))),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: getProportionateScreenWidth(8),
                          vertical: getProportionateScreenHeight(16)),
                      child: Column(
                        children: [
                          Expanded(
                            child: CustomImageView(
                              imageUrl:
                                  "https://image.tmdb.org/t/p/w220_and_h330_face/${e.posterPath ?? ""}",
                              isFromAssets: false,
                            ),
                          ),
                          SizedBox(
                            height: getProportionateScreenHeight(8),
                          ),
                          Text(
                            e.originalTitle ?? "No Title",
                            maxLines: 3,
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    )),
              ))
          .toList(),
    ));
  }
}
