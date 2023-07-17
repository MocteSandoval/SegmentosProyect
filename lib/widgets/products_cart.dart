// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:prueba_botones/providers/app_provider.dart';
import 'package:prueba_botones/providers/cart_products_provider.dart';

import 'package:prueba_botones/widgets/add_product_to_cart.dart';

class ProductsCart extends StatelessWidget {
  const ProductsCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final numberFormat = NumberFormat.currency(locale: 'es_MX', symbol: "\$");
    final provider = Provider.of<AppProvider>(context);
    final carProvider = Provider.of<CartProductsProvider>(context);
    final size = MediaQuery.of(context).size;
    return Container(
        margin: const EdgeInsets.only(left: 20),
        height: 510,
        width: 530,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                blurRadius: 10,
                color: Colors.black.withOpacity(0.5),
                offset: Offset(10, 20))
          ],
          color: const Color.fromARGB(255, 37, 56, 66),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            SizedBox(
              width: size.width,
              height: 50,
              child: Container(
                
                decoration: const BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10))
                  ),
                child: const Center(child: Text('Cart Products'),),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: carProvider.productsAdded.length,
                itemBuilder: (BuildContext context, int index) {
                  return AddProductToCart(
                    index: index,
                    
                    productName: 'Product ',
                    productPrice: numberFormat.format(100),
                    quantity: 1,
                  );
                },
              ),
            ),
          ],
        ));
  }
}
