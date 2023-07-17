import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/app_provider.dart';

class AddProductCategoryView extends StatelessWidget {
  const AddProductCategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final provider = Provider.of<AppProvider>(context, listen: true);
    return Container(
      width: size.width,
      height: size.height,
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 50,
                color: const Color.fromARGB(255, 37, 56, 66),
              ),
              const Positioned(
                  top: 3,
                  left: 250,
                  child: Center(
                      child: Text(
                    'What do you want to add?',
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.w200,
                        letterSpacing: 3),
                  ))),
            ],
          ),
          const SizedBox(height: 30),
          ListTile(
            leading: const Icon(Icons.inventory_2, color: Colors.black),
            title: const Text('Product'),
            onTap: () {},
          ),
          const SizedBox(height: 20),
          ListTile(
              leading: const Icon(Icons.category, color: Colors.black),
              title: const Text('Category'),
              onTap: () {}),
          const SizedBox(height: 50),
          Center(
            child: FloatingActionButton.extended(
                onPressed: () {
                  provider.selectedView = provider.defaultView;
                },
                label: const Text('Back to home')),
          )
        ],
      ),
    );
  }
}
