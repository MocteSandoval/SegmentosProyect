import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:prueba_botones/providers/app_provider.dart';
import 'package:prueba_botones/providers/cart_products_provider.dart';

class AddProductToCart extends StatelessWidget {
  final String productName;
  final String productPrice;
  final int quantity;
  final int index;
  final Color hoverColor;

  const AddProductToCart(
      {super.key,
      required this.productName,
      required this.productPrice,
      required this.quantity,
      required this.index, required this.hoverColor});

  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<CartProductsProvider>(context);
    final provider = Provider.of<AppProvider>(context);
    return ListTile(
      onTap: () {
        provider.selectedView = provider.productsInfoView;
      },
      iconColor: Colors.white,
      textColor: Colors.white,
      leading: CircleAvatar(
        child: Text('$quantity'),
      ),
      hoverColor: hoverColor,
      focusColor: Colors.white,
      splashColor: Colors.white,
      title: Text(productName),
      subtitle: Text(productPrice),
      trailing: FittedBox(
        fit: BoxFit.cover,
        child: Row(
          children: [
            IconButton(
                onPressed: () {
                  cartProvider.addQuantity(quantity);
                },
                icon: const Icon(Icons.add)),
            const SizedBox(width: 5),
            IconButton(
                onPressed: () {
                  cartProvider.deleteQuantity(quantity);
                },
                icon: const Icon(Icons.remove)),
            const SizedBox(width: 5),
            IconButton(
                onPressed: () {
                  cartProvider.deletToCart(cartProvider.productsAdded[index]);
                },
                icon: const Icon(
                  Icons.delete,
                  color: Colors.red,
                )),
          ],
        ),
      ),
    );
  }
}
