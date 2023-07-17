import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:prueba_botones/widgets/inputs/custom_input.dart';

import '../../providers/app_provider.dart';

class AddClientView extends StatelessWidget {
  const AddClientView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final provider = Provider.of<AppProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SizedBox(
        width: size.width,
        height: size.height,
        child:  Form(
          child: SingleChildScrollView(
            child: Column(
              children: [
    
                CustomInput(),
    
    
                 ElevatedButton(
                onPressed: () {
                  provider.selectedView = provider.defaultView;
                },
                child: const Text('Go back!'),
              ),
              ],
    
            ),
          )
        )
      ),
    );
  }
}

