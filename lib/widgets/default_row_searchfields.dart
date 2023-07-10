import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:prueba_botones/providers/app_provider.dart';
import 'package:prueba_botones/widgets/custom_searchfield.dart';
class DefaultRowSearchFields extends StatelessWidget {
  const DefaultRowSearchFields({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<AppProvider>(context);
    return Row(
      children: [
        Expanded(
          child: SearchField(
            type: 'Client',
            onTap: () {
              provider.defaultRowSearchFields = provider.tapClient;
            },
          ),
        ),
        Expanded(
          child: SearchField(
            type: 'Product',
            onTap: () {
              provider.defaultRowSearchFields = provider.tapProduct;
            },
          ),
        ),
      ],
    );
  }
}