import 'package:flutter/material.dart';

class ProductsCart extends StatelessWidget {
  const ProductsCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20),
      height: 475,
      width: 530,
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(10),

      ),
      child: ListView.builder(
        itemBuilder: (BuildContext context, int index) { 
        return const ListTile(
          leading:  Icon(Icons.shopping_cart),
          title:  Text('Producto'),
          subtitle:  Text('Precio'),
          trailing:  Icon(Icons.delete),
        );
       },
       
      )
    );
  }
}