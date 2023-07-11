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
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Container(
        
        decoration:const BoxDecoration(
          
          boxShadow:[
            BoxShadow(
              color: Colors.black12,
              blurRadius: 20,
              offset: Offset(2, 5),
            ),
          ]
        ),
          width: 450,
          height: 80,
          child: CustomButton(onPressed: (){
            provider.selectedView = provider.viewAddClient;
          }, color: Colors.black,
          child:  Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:const [
              CircleAvatar(radius: 70, child: Text('PG'),),
              SizedBox(width: 10),
              Expanded(child: Text('Público en general', style: TextStyle(fontSize: 25, color: Colors.white),)),
            ],
          ),)),
    );
  }
}
