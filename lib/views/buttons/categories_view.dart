import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/app_provider.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<AppProvider>(context);
    return Wrap(
      children: List.generate(
          54,
          (index) => Padding(
                padding: const EdgeInsets.all(4.0),
                child: SizedBox(
                  width: 135,
                  height: 80,
                  child: FloatingActionButton.extended(
                    backgroundColor: Colors.blue,
                    // -------------- FUNCION DE LOS BOTONES ----------------
                    onPressed: () {
                      (index == 0)
                          ? provider.selectedView = provider.defaultView
                          : Text('Category $index');
                    },
                    // -------------- CHILD DE LOS BOTONES ----------------
                    label: (index == 0)
                        ? const Icon(
                            Icons.arrow_circle_left_outlined,
                            size: 40,
                            color: Colors.white,
                          )
                        : Text('Category $index'),
                  ),
                ),
              )),
    );
  }
}