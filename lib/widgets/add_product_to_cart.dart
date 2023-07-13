import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
      required this.quantity, required this.index});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<AppProvider>(context);
    return ListTile(
      leading: Text('$quantity'),
      title: Text(productName),
      subtitle: Text(productPrice),
      trailing: FittedBox(
        fit: BoxFit.cover,
        child: Row(
          children: [
            IconButton(onPressed: () {}, icon: Icon(Icons.add)),
            SizedBox(width: 5),
            IconButton(
                onPressed: () {
                  provider.deletToCart(provider.productsAdded[index]);
                },
                icon: Icon(
                  Icons.delete,
                  color: Colors.red,
                )),
            SizedBox(width: 5),
            IconButton(
                onPressed: () {}, icon: Icon(Icons.info_outline_rounded)),
          ],
        ),
      ),
    );
  }
}
