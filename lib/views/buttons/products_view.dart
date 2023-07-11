import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:prueba_botones/widgets/custom_button.dart';

import '../../providers/app_provider.dart';

class ProductsView extends StatelessWidget {
  const ProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<AppProvider>(context);
    return Wrap(
      children: List.generate(54, (index) {
        return (index == 0)
            ? CustomButton(
                onPressed: () {
                  provider.selectedView = provider.defaultView;
                },
                color: Colors.black,
                child: const Center(
                  child: Icon(
                    Icons.home_filled,
                    size: 50,
                    color: Colors.white,
                  ),
                ))
            : (index == 52)
                ? CustomButton(
                    onPressed: () {},
                    color: Colors.black,
                    child: const Center(
                      child: Icon(
                        Icons.arrow_circle_left,
                        color: Colors.white,
                        size: 40,
                      ),
                    ))
                : (index == 53)
                    ? CustomButton(
                        onPressed: () {},
                        color: Colors.black,
                        child: const Center(
                          child: Icon(
                            Icons.arrow_circle_right,
                            color: Colors.white,
                            size: 40,
                          ),
                        ))
                    : CustomButton(
                        onPressed: () {},
                        color: Colors.blue,
                        child: Center(
                          child: Text('Product $index'),
                        ));
      }),
    );
  }
}

class AddProductToCart extends StatelessWidget {
  final IconData typeOfProduct;
  final String productName;
  final String productPrice;

  const AddProductToCart(
      {super.key,
      required this.typeOfProduct,
      required this.productName,
      required this.productPrice});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(typeOfProduct),
      title: Text(productName),
      subtitle: Text(productPrice),
      trailing: const Icon(Icons.delete),
    );
  }
}
