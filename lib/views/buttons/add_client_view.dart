import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/app_provider.dart';

class AddClientView extends StatelessWidget {
  const AddClientView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final provider = Provider.of<AppProvider>(context);
    return Container(
      width: size.width,
      height: size.height,
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Add client'),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              provider.selectedView = provider.defaultView;
            },
            child: const Text('Go back!'),
          ),
        ],
      )
    );
  }
}