import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:prueba_botones/views/buttons/default_view.dart';

import '../../providers/app_provider.dart';
import '../../widgets/custom_button.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1),
      child: Wrap(
        children: List.generate(54, (index) {
          if (index == 0) {
            return const HomeButton();
          }
          if ((index >= 1) && (index <= 11)) {
            return const SubcategoryButton();
          }
          if (index == 52) {
            return CustomButton(
                onPressed: () {}, 
                color: Colors.black,
                child: const Center(
                  child: Icon(Icons.arrow_circle_left_outlined,
                      size: 45, color: Colors.white),
                ));
          }
          if(index == 53){
            return CustomButton(
                onPressed: () {}, 
                color: Colors.black,
                child: const Center(
                  child: Icon(Icons.arrow_circle_right_outlined,
                      size: 45, color: Colors.white),
                ));
          }

          return ProductButton(
            index: index,
          );
        }),
      ),
    );
  }
}

class HomeButton extends StatelessWidget {
  const HomeButton({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<AppProvider>(context);
    return CustomButton(
        onPressed: () {
          provider.selectedView = provider.defaultView;
        },
        color: Colors.black,
        child: const Center(
          child: Icon(
            Icons.home_outlined,
            size: 45,
            color: Colors.white,
          ),
        ));
  }
}

class SubcategoryButton extends StatelessWidget {
  const SubcategoryButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
        onPressed: () {},
        color: const Color.fromARGB(255, 182, 127, 127),
        child: const Text('Subcategory'));
  }
}
