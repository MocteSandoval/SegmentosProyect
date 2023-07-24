import 'package:flutter/material.dart';

import '../config/entities/product.dart';

class CartProductsProvider extends ChangeNotifier {
  List<Widget> _productsAdded = [];

  List<Widget> get productsAdded => _productsAdded;

  set productsAdded(List<Widget> productsAdded) {
    _productsAdded = productsAdded;
    notifyListeners();
  }

  //------------------------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------------------------

  Widget addToCartFromProduct(Product product) {
    
    return FutureBuilder(
      builder: (context, snapshot) {
      return ListTile(
      onTap: () {
         
      },
      iconColor: Colors.white,
      textColor: Colors.white,
      leading: CircleAvatar(
        child: Text(product.quantity.toString()),
      ),
      
      focusColor: Colors.white,
      splashColor: Colors.white,
      title: Text(product.item),
      subtitle: Text(product.price.toString()),
      trailing: FittedBox(
        fit: BoxFit.cover,
        child: Row(
          children: [
            IconButton(
                onPressed: () {
                  
                },
                icon: const Icon(Icons.add)),
            const SizedBox(width: 5),
            IconButton(
                onPressed: () {
                  
                },
                icon: const Icon(Icons.remove)),
            const SizedBox(width: 5),
            IconButton(
                onPressed: () {
                  
                },
                icon: const Icon(
                  Icons.delete,
                  color: Colors.red,
                )),
          ],
        ),
      ),
    );
    });
  }
//------------------------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------------------------
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
