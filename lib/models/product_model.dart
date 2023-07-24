import 'package:prueba_botones/config/entities/product.dart';

class ProductModel {
  final int id;
  final String item;
  final double price;
  final int categoryId;
  final int quantity = 1;

  ProductModel(
    {
      quantity = 1,
      required this.id,
      required this.item,
      required this.price,
      required this.categoryId});

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        id: json["id"],
        item: json["item"],
        price: json["price"].toDouble(),
        categoryId: json["categoryId"],
        
      );

  Product toProductEntitie() =>
      Product(id: id, item: item, price: price, categoryId: categoryId, quantity: quantity);
}
