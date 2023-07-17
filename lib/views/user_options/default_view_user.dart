import 'package:flutter/material.dart';
import 'package:prueba_botones/widgets/client_button.dart';
import 'package:prueba_botones/widgets/custom_divider.dart';
import 'package:prueba_botones/widgets/custom_row_searchfields.dart';

import 'package:prueba_botones/widgets/custom_table_totals.dart';
import 'package:prueba_botones/widgets/products_cart.dart';

class DefaultViewUser extends StatelessWidget {
  const DefaultViewUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [
          CustomRowSearchfields(),
          SizedBox(height: 10),
          Center(child: ClientButton()),
          SizedBox(height: 10),
          ProductsCart(),
          SizedBox(height: 10),
          CustomDivider(),          
          CustomTableTotals(),
        ],
      ),
    );
  }
}



//----------------------------------------------------------------------------------------------------------------

//----------------------------------------------------------------------------------------------------------------



//----------------------------------------------------------------------------------------------------------------


//----------------------------------------------------------------------------------------------------------------

//----------------------------------------------------------------------------------------------------------------