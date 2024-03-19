import 'dart:convert';
import 'dart:developer';
import 'package:api_task/model/model.dart';
import 'package:http/http.dart' as http;

class ProductServices {
  Future<ListProductModel?> getAllData() async {
    var endPoints = Uri.parse('https://fakestoreapi.com/products/');
    try {
      var response = await http.get(endPoints);
      if (response.statusCode == 200) {
        var body = jsonDecode(response.body);
        final data = ListProductModel.fromJson(body);
        return data;
      } else {
        log('Request failed with status: ${response.statusCode}');
        return null;
      }
    } catch (e) {
      log('Failed to get product: $e');
      throw 'Failed to get product: $e';
    }
  }
}
