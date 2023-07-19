import 'package:prueba_botones/config/entities/product.dart';

class Category {

  final int id;
  final String category;
  final List<Product> products;

  Category({
    required this.id,
    required this.category,
    required this.products
  });

}