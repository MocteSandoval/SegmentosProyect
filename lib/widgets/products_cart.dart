import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:prueba_botones/providers/app_provider.dart';
import 'package:prueba_botones/views/buttons/products_view.dart';

class ProductsCart extends StatelessWidget {
  const ProductsCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final numberFormat = NumberFormat.currency(locale: 'es_MX', symbol: "\$");
    final provider = Provider.of<AppProvider>(context);
    return Container(
        margin: const EdgeInsets.only(left: 20),
        height: 475,
        width: 530,
        decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.circular(10),
        ),
        child: ListView.builder(
          itemCount: provider.productsAdded.length,
          itemBuilder: (BuildContext context, int index) {
            return FutureBuilder(builder: (context, snapshot) {
              return AddProductToCart(
                typeOfProduct: Icons.point_of_sale_rounded,
                productName: 'Product $index',
                productPrice: numberFormat.format(100),
              );
            });
          },
        ));
  }
}
