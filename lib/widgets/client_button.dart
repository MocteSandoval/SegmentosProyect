import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:prueba_botones/providers/app_provider.dart';
class ClientButton extends StatelessWidget {
  const ClientButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<AppProvider>(context);
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: SizedBox(
          width: 300,
          height: 80,
          child: FloatingActionButton.extended(
              onPressed: () {
                provider.selectedView = provider.viewAddClient;
              },
              label: Row(children: const [
                Icon(Icons.person_add_alt_1_rounded, size: 30,),
                SizedBox(width: 10),
                Text('Cliente',style: TextStyle(fontSize: 20),),
              ]))),
    );
  }
}
