import 'package:api_task/model/model.dart';
import 'package:api_task/service/products_services.dart';
import 'package:flutter/material.dart';

class DataController extends ChangeNotifier {
  DataController() {
    getAllData();
  }
  ListProductModel? products;
  Future<void> getAllData() async {
    products = await ProductServices().getAllData();
    notifyListeners();
  }
}
