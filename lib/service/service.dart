import 'dart:async';
import 'dart:convert';
import 'package:flutter/cupertino.dart';

import 'package:http/http.dart' as http;
import 'package:tigabitis_interview/model/model.dart';


class Auth with ChangeNotifier {




  Products? products;





  Future<List<Products>> fetchProducts() async {
    final response = await http.get(Uri.parse('https://www.modern.resto.qa/api/product?store_id-1043&page_first_result=08result_per_page=20'));

    if (response.statusCode == 200) {
      final List<dynamic> jsonList = json.decode(response.body);
      return jsonList.map((json) => Products.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load products');
    }
  }

}








