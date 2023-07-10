import 'package:flutter/material.dart';
import 'package:prueba_botones/widgets/client_button.dart';
import 'package:prueba_botones/widgets/custom_divider.dart';
import 'package:prueba_botones/widgets/custom_searchfield.dart';
import 'package:prueba_botones/widgets/custom_table_totals.dart';
import 'package:prueba_botones/widgets/products_cart.dart';

class DefaultViewUser extends StatelessWidget {
  const DefaultViewUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        CustomSearchField(),
        SizedBox(height: 20),
        Center(child: ClientButton()),
        SizedBox(height: 20),
        ProductsCart(),
        SizedBox(height: 50),
        CustomDivider(),
        
        CustomTableTotals(),
      ],
    );
  }
}


//----------------------------------------------------------------------------------------------------------------

//----------------------------------------------------------------------------------------------------------------



//----------------------------------------------------------------------------------------------------------------


//----------------------------------------------------------------------------------------------------------------

//----------------------------------------------------------------------------------------------------------------