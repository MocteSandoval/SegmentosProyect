import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:prueba_botones/providers/app_provider.dart';
import 'package:prueba_botones/widgets/custom_button.dart';
class ClientButton extends StatelessWidget {
  const ClientButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<AppProvider>(context);
    return InkWell(
      onTap: (){
        provider.selectedView = provider.viewAddClient;
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: SizedBox(
        
            width: 450,
            height: 80,
            child: Row(
              children: const [
                CircleAvatar(radius: 50,child: Text('GP', style: TextStyle(fontSize: 30),),),
                SizedBox(width: 10),
                Text('General public', style: TextStyle(fontSize: 25),),
              ]
              )),
      ),
    );
  }
}
