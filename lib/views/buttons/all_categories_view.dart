import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:prueba_botones/widgets/custom_button.dart';

import '../../providers/app_provider.dart';
import '../../providers/categories_provider.dart';

class AllCategoriesView extends StatelessWidget {
  const AllCategoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<AppProvider>(context);
    final categoriesProvider = Provider.of<CategoriesProvider>(context);
    return Wrap(
        children: List.generate(54, (index) {

          if(index == 0){
            return CustomButton(
            onPressed: (){
              provider.selectedView = provider.defaultView;
            }, 
            color: Colors.black, 
            child: const Center(child: Icon(Icons.home, size: 50, color: Colors.white,)));
          }
          if(index == 52){
            return CustomButton(
                        onPressed: () {},
                        color: Color.fromARGB(153, 197, 191, 191),
                        child: const Center(
                          child: Icon(
                            Icons.arrow_circle_left,
                            color: Colors.black,
                            size: 40,
                          ),
                        ));
          }
          if(index == 53){
            return CustomButton(
                        onPressed: () {},
                        color: Color.fromARGB(153, 197, 191, 191),
                        child: const Center(
                          child: Icon(
                            Icons.arrow_circle_right,
                            color: Colors.black,
                            size: 40,
                          ),
                        ));
          }
      return CustomButton(
          onPressed: () {}, color: Colors.black87,
          child:  Text(
             categoriesProvider.categories[index].category, 
          style: TextStyle(color: Colors.white),));
    }));
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