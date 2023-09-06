import 'package:flutter/material.dart';
import 'package:tigabitis_interview/model/model.dart';

class CartAdding with ChangeNotifier {
  final List<int> _products = [];

  List<int> get products => _products;

  void addToList(int productId) {
    _products.add(productId);
    notifyListeners();
  }

  void removeFromList(int productId) {
    _products.remove(productId);
    notifyListeners();
  }

  void printAddedList() {
    print(_products);
  }
}


