import 'package:flutter/material.dart';
import 'package:prueba_botones/config/data/products.dart';
import 'package:prueba_botones/models/product_model.dart';

import '../config/entities/product.dart';

class ProductsProvider extends ChangeNotifier {
  final List<Product> products = [];

  List<Product> get productsList => products;

  set productsList(List<Product> productsList) {
    products.addAll(productsList);
    notifyListeners();
  }

  bool initialLoading = true;

  Future<void> loadProducts() async {
    await Future.delayed(const Duration(seconds: 2));
    final List<Product> dataProducts = productsD
        .map((product) => ProductModel.fromJson(product).toProductEntitie())
        .toList();
    productsList.addAll(dataProducts);
    initialLoading = false;
    notifyListeners();
  }
}
