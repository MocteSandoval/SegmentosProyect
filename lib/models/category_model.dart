

import 'package:prueba_botones/config/entities/category.dart';

import '../config/entities/product.dart';

class CategoryModel {
  final int id;
  final String category;
  List<Product> products = [];

  CategoryModel({
    required this.id, 
    required this.category, 
     this.products = const []
    });

  factory CategoryModel.fromJson(Map<String, dynamic> json) => CategoryModel(
    id: json["id"],
    category: json["category"],
  products: List<Product>.from(json["products"].map((product) => product))
  );

  Category toCategoryEntitie() => Category(id: id, category: category, products: products);



}
