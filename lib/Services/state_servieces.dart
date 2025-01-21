import 'dart:convert';
import 'dart:developer';

import 'package:bilytica_project/Services/Utilities/app_url.dart';
import 'package:http/http.dart' as http;

import '../Model/get_datting_Model.dart';

class StateServieces {
  // Future<GetDatingModel> fetchDatingList() async {
  //   final response = await http.get(Uri.parse(AppUrl.homeApi));

  //   if (response.statusCode == 200) {
  //     var data = jsonDecode(response.body);
  //     return GetDatingModel.fromJson(data);
  //   } else {
  //     throw Exception("Error");
  //   }
  // }
  Future<List<dynamic>> fetchDatingList() async {
    var data;
    final response = await http.get(Uri.parse(AppUrl.homeApi));
    if (response.statusCode == 200) {
      data = jsonDecode(response.body);
      log("Api access data from URL");
      return data;
    } else {
      log("Api access data from URL");
      throw Exception("Error");
    }
  }
}
