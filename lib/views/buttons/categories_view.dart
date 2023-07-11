import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:prueba_botones/widgets/custom_button.dart';

import '../../providers/app_provider.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<AppProvider>(context);
    return Wrap(
      children: List.generate(
          54,
          (index) => CustomButton(
              onPressed: () {
                (index == 0)
                    ? provider.selectedView = provider.defaultView
                    : (index == 52)
                        ? print('izquierda')
                        : (index == 53)
                            ? print('derecha')
                            : () {};
              },
              color: (index == 0)
                  ? Colors.black
                  : (index == 52)
                      ? Colors.black
                      : (index == 53)
                          ? Colors.black
                          : Colors.blue,
              child: (index == 0)
              ? const Center(
                  child: Icon(
                    Icons.home_filled,
                    size: 50,
                    color: Colors.white,
                  ),
                )
                :(index == 52)
                ? const Center(
                  child: Icon(
                    Icons.arrow_circle_left,
                    color: Colors.white,
                    size: 40,
                  ),
                )
                :(index == 53)
                ? const Center(
                  child: Icon(
                    Icons.arrow_circle_right,
                    color: Colors.white,
                    size: 40,
                  ),
                )
              
              
              
              :Center(
                child: Text('Category $index'),
              ))),
    );
  }
}


// Padding(
//                 padding: const EdgeInsets.all(4.0),
//                 child: SizedBox(
//                   width: 135,
//                   height: 80,
//                   child: FloatingActionButton.extended(
//                     backgroundColor: (index == 0) 
//                     ? Colors.red
//                     :(index == 52)
//                     ? Colors.grey
//                     :(index == 53)
//                     ? Colors.grey
//                     : Colors.blue

//                     ,
//                     // -------------- FUNCION DE LOS BOTONES ----------------
//                     onPressed: () {
//                       (index == 0)
//                           ? provider.selectedView = provider.defaultView
//                           : Text('Category $index');
//                     },
//                     // -------------- CHILD DE LOS BOTONES ----------------
//                     label: (index == 0)
//                         ? const Icon(
//                             Icons.arrow_circle_left_outlined,
//                             size: 40,
//                             color: Colors.white,
//                           )
//                           :(index == 52)
//                           ? const Icon(Icons.arrow_circle_left,size: 40,color: Colors.white,)
//                             :(index == 53)
//                           ? const Icon(Icons.arrow_circle_right,size: 40,color: Colors.white,)
//                         : Text('Category $index'),
//                   ),
//                 ),
//               )