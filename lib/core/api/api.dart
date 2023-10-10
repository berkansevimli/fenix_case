import 'dart:convert';

import 'package:fenix_interview/core/constants/api_urls.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class Api {
  var client = http.Client();

  Future<dynamic> searchMovie(String query) async {
    if (kDebugMode) print("clicked getWineTypes");
    final response = await http.get(
      Uri.parse("$baseUrl$query"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
    return json.decode(response.body);
  }
}
