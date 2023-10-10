import 'package:fenix_interview/view/screens/home/models/movies_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import '../../../../../core/base/viewmodel/base_view_model.dart';
import '../../../../core/api/api.dart';
import '../../../../core/services/locator.dart';

class HomeViewModel extends BaseViewModel {
  HomeViewModel(this.context);

  final BuildContext context;
  final Api api = locator<Api>();

  bool _isLoading = false;
  bool get isLoading => _isLoading;
  void setLoading(val) {
    _isLoading = val;
    notifyListeners();
  }

  List<Result> _movies = [];
  List<Result> get movies => _movies;
  void setMovies(List<Result> val) {
    _movies = val;
    notifyListeners();
  }

  void reset() {
    _movies.clear;
    notifyListeners();
  }

  Future<dynamic> searchMovie(String query) async {
    setLoading(true);
    try {
      final response = await api.searchMovie(query);

      if (kDebugMode) print("searchMovie response ${response}");
      if (response == null) {
        setErrorMessage('Error has occured with the search Movie');
      } else {
        setMovies(MoviesModel.fromJson(response).results);
      }
      setLoading(false);
    } catch (e) {
      if (kDebugMode) print(e);
      setLoading(false);
    }
  }
}
