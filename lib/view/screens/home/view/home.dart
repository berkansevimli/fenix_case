import 'package:fenix_interview/ui/size_config.dart';
import 'package:fenix_interview/ui/utilities/utilities.dart';
import 'package:fenix_interview/view/common_widgets/custom_svg_view.dart';
import 'package:fenix_interview/view/common_widgets/custom_text_field.dart';
import 'package:fenix_interview/view/screens/home/view_model/home_view_model.dart';
import 'package:fenix_interview/view/screens/home/widgets/movie_card.dart';
import 'package:fenix_interview/view/screens/home/widgets/no_result_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String searchText = "";
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(context),
      builder: (context, viewModel, child) {
        return Scaffold(
            appBar: AppBar(
              title: const Text("Fenix Movies"),
              elevation: 0.5,
            ),
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(getProportionateScreenWidth(16)),
                  child: CustomTextField(
                    hint: "Type min 2 characters to search",
                    icon: AssetUtilities.searchSvg,
                    onChange: (val) {
                      if (val.length >= 2) {
                        setState(() {
                          searchText = val;
                        });
                        viewModel.searchMovie(searchText);
                      }
                      if (val.isEmpty || val.length < 2) {
                        setState(() {
                          searchText = val;
                        });
                        viewModel.reset();
                      }
                    },
                  ),
                ),
                if (searchText.length < 2)
                  Expanded(
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomSvgView(
                            height: getProportionateScreenHeight(100),
                            width: getProportionateScreenWidth(100),
                            imageUrl: AssetUtilities.movieSvg,
                            takeDefaultColor: true,
                          ),
                          Text("Search a movie!",
                              style: TextStyle(
                                  fontSize: getProportionateScreenWidth(16),
                                  color: ColorUtilities.dark_700)),
                        ],
                      ),
                    ),
                  )
                else if (viewModel.isLoading)
                  buildLoading()
                else if (viewModel.movies.isEmpty)
                  const NoResultWidget()
                else
                  MovieCard(viewModel: viewModel)
              ],
            ));
      },
    );
  }

  Expanded buildLoading() =>
      const Expanded(child: Center(child: CupertinoActivityIndicator()));
}

