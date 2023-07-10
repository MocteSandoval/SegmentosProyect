import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:prueba_botones/providers/app_provider.dart';
import 'package:prueba_botones/widgets/custom_searchfield.dart';
import 'package:prueba_botones/widgets/default_row_searchfields.dart';

class CustomRowSearchfields extends StatelessWidget {
  const CustomRowSearchfields({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<AppProvider>(context);
    return Padding(
        padding: const EdgeInsets.only(top: 10, left: 20),
        child: provider.defaultRowSearchFields);
  }
}



class TapClient extends StatelessWidget {
  
  const TapClient({super.key,});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<AppProvider>(context);
    return Padding(
        padding: const EdgeInsets.only(top: 10, left: 20),
        child: Row(
          children: [
            Expanded(
              child: SearchField(
                iconButton: IconButton(
                  onPressed: (){
                    provider.defaultRowSearchFields = const DefaultRowSearchFields();
                  },
                  icon: const Icon(Icons.close),
                ),
                type: 'Client',
                onTap: () {},
              ),
            ),
          ],
        ));
  }
}

class TapProduct extends StatelessWidget {
  
  const TapProduct({super.key, });

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<AppProvider>(context);
    return Padding(
        padding: const EdgeInsets.only(top: 10, left: 20),
        child: Row(
          children: [
            Expanded(
              child: SearchField(
                iconButton: IconButton(
                  onPressed: (){
                    provider.defaultRowSearchFields = const DefaultRowSearchFields();
                  },
                  icon: const Icon(Icons.close),
                ),
                type: 'Product',
                onTap: () {},
              ),
            ),
          ],
        ));
  }
}


