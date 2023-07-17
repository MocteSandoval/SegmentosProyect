import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/app_provider.dart';


class ProductInfoView extends StatelessWidget {
  const ProductInfoView({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<AppProvider>(context);
    return Scaffold(
      appBar: AppBar(
        
        actions: [
          IconButton(
            onPressed: (){
              provider.selectedView = provider.defaultView;
            }, 
            icon: const Icon(Icons.close_rounded))
        ],
        title: const Text('Product Name'),
      ),
      body: SingleChildScrollView(
        
        child: Column(
          children: [
            Container(color: Colors.black,),
            const SizedBox(height: 10,),
            const Text('Product Name')
          ],
          
        )
      ),
    );
  }
}