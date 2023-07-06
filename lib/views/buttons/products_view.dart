import 'package:flutter/material.dart';

class ProductsView extends StatelessWidget {
  const ProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: List.generate(
          54,
          (index) => Padding(
                padding: const EdgeInsets.all(4.0),
                child: SizedBox(
                  width: 135,
                  height: 80,
                  child: FloatingActionButton.extended(
                    onPressed: () {},
                    label: Text(
                      '$index',
                    ),
                  ),
                ),
              )),
    );
  }
}
