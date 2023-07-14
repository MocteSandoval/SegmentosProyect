import 'package:flutter/material.dart';

class CartProductsProvider extends ChangeNotifier {
  List<Widget> _productsAdded = [];

  List<Widget> get productsAdded => _productsAdded;

  set productsAdded(List<Widget> productsAdded) {
    _productsAdded = productsAdded;
    notifyListeners();
  }


  void addToCart(Widget product) {
    _productsAdded.add(product);
    notifyListeners();
  }

  void deletToCart(Widget product) {
    _productsAdded.remove(product);
    notifyListeners();
  }

  void clearCart() {
    _productsAdded.clear();
    notifyListeners();
  }

  void addQuantity(int quantity) {
    quantity++;
    notifyListeners();
  }
  void deleteQuantity(int quantity) {
    quantity--;
    notifyListeners();
  }

  int get totalItems => _productsAdded.length;
}
