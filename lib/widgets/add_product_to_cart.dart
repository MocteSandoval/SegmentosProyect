import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:prueba_botones/providers/cart_products_provider.dart';

import '../providers/app_provider.dart';

class AddProductToCart extends StatelessWidget {
  final IconData typeOfProduct;
  final String productName;
  final String productPrice;
  final int quantity;
  final int index;

  const AddProductToCart(
      {super.key,
      required this.typeOfProduct,
      required this.productName,
      required this.productPrice,
      required this.quantity,
      required this.index});

  @override
  Widget build(BuildContext context) {
    
    final cartProvider = Provider.of<CartProductsProvider>(context);
    return ListTile(
      onTap: (){},
      iconColor: Colors.white,
      textColor: Colors.white,
      leading: CircleAvatar(
        child: Text('$quantity'),
      ),
      title: Text(productName),
      subtitle: Text(productPrice),
      trailing: FittedBox(
        fit: BoxFit.cover,
        child: Row(
          children: [
            IconButton(
                onPressed: () {
                  cartProvider.deletToCart(cartProvider.productsAdded[index]);
                },
                icon: const Icon(
                  Icons.delete,
                  color: Colors.red,
                )),
                const SizedBox(width: 5),
            IconButton(
                onPressed: () {
                  cartProvider.addQuantity(quantity);
                },
                icon: const Icon(Icons.add)),
            const SizedBox(width: 5),
            IconButton(
              onPressed: () {
              cartProvider.deleteQuantity(quantity);
            }, icon: const Icon(Icons.remove)),
            
            const SizedBox(width: 5),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.info_outline_rounded)),
          ],
        ),
      ),
    );
  }
}
