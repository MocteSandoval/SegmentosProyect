class Product {
  final int id;
  final String item;
  final double price;
  final int categoryId;
  final int quantity = 1;

  Product( 
      {
        quantity = 1,
        required this.id,
      required this.item,
      required this.price,
      required this.categoryId});
}
