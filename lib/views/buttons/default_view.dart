import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:prueba_botones/providers/app_provider.dart';

class DefaultView extends StatelessWidget {
  const DefaultView({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<AppProvider>(context);
    return Column(
      children: [
        Wrap(
            children: List.generate(
          48,
          (index) => Padding(
              padding: const EdgeInsets.all(4.0),
              child: SizedBox(
                width: 135,
                height: 80,
                child: FloatingActionButton.extended(
                    // tooltip: ,
                    // -------------- COLOR DE BOTONES ----------------
                    backgroundColor: (index == 0)
                        ? Colors.green
                        : (index <= 4)
                            ? Colors.blue
                            : (index == 5)
                                ? Colors.red
                                : (index >= 42) 
                                    ? Colors.grey
                                      : (index == 47)
                                      ? Colors.purple
                                        : Colors.amber,
                    // -------------- FUNCION DE LOS BOTONES ----------------
                    onPressed: () {
                      (index == 0)
                          ? provider.selectedView =
                              provider.addProductCategoryView
                          : (index <= 4)
                              ? showDialog(
                                  context: context,
                                  builder: (context) {
                                    return const AlertDialog(
                                        content: SizedBox(
                                            width: 400,
                                            height: 200,
                                            child: Center(
                                                child: Text('Categoria '))));
                                  })
                              : (index == 5)
                                  ? provider.selectedView =
                                      provider.categoriesView
                                  : (index >= 42)
                                      ? print('Option $index ')
                                      : (index == 47)
                                          ? print('All options')
                                      : print('Add product');
                    },

                    // -------------- CHILD DE LOS BOTONES ----------------
                    label: (index == 0)
                        ? const Icon(Icons.add, size: 40)
                        : (index <= 4)
                            ? Text('Category $index ')
                            : (index == 5)
                                ? const Icon(Icons.more_horiz_outlined,
                                    size: 40)
                                : (index >= 42)
                                    ? Text('Option $index ')
                                      : (index == 47)
                                        ? const Icon(Icons.more_horiz_outlined)
                                          : Text('Product $index ')),
              )),
        )),
        Row(
          children: [
            CustomPrincipalButton(onPressed: () {  }, color: Colors.red, label: Text('Button 1'),),
            CustomPrincipalButton(onPressed: () {  }, color: Colors.blue, label: Text('Button 1'),),
            CustomPrincipalButton(onPressed: () {  }, color: Colors.yellow, label: Text('Button 1'),),
         
          ],
        )
      ],
    );
  }
}

class CustomPrincipalButton extends StatelessWidget {
  final Color color;
  final void Function() onPressed;
  final Widget label;
  const CustomPrincipalButton({
    super.key, required this.color, required this.onPressed, required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      margin: const EdgeInsets.all(5),
      
      height: 120,
      child: FloatingActionButton.extended(
        onPressed: onPressed, 
        label: label,
        backgroundColor: color,
        ),
    ));
  }
}
