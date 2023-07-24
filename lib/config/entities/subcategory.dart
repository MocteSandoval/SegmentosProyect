import 'package:prueba_botones/config/entities/category.dart';
import 'package:prueba_botones/config/entities/product.dart';

class Subcategory {
  final int id;
  final String subcategory;
  final Category categoryId;
  final List<Product> products;

  Subcategory({
    required this.id,
    required this.subcategory, 
    required this.categoryId, 
    required this.products});

}
