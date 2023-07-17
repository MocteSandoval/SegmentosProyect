import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:prueba_botones/providers/app_provider.dart';
import 'package:prueba_botones/providers/cart_products_provider.dart';
import 'package:prueba_botones/widgets/custom_button.dart';
// import 'package:provider/provider.dart';
// import 'package:prueba_botones/providers/app_provider.dart';

class DefaultView extends StatelessWidget {
  const DefaultView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1),
      child: Wrap(
        children: List.generate(51, (index) {
          if (index == 0) {
            return const AddProductCategoryButton();
          }
          if ((index >= 1) && (index <= 4)) {
            return const CategoryButton();
          }
          if (index == 5) {
            return const AllCategoriesButton();
          }
          if (index <= 40) {
            return ProductButton(
              index: index,
            );
          }
          if (index <= 41) {
            return const AllProductsButton();
          }
          if ((index >= 42) && (index <= 46)) {
            return const OptionButton();
          }
          if (index == 47) {
            return const AllOptions();
          }
          if(index == 48){
            return PrincipalButtons(
              color: const Color.fromARGB(255, 165, 133, 39),
              onPressed: (){},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.people_alt, size: 35,color: Colors.white,),
                  SizedBox(width: 10),
                  Text('Cerrar sesión', style: TextStyle(fontSize: 18,color: Colors.white,),)
                ],
              ),
            );
          }
          if(index == 49){
            return PrincipalButtons(
              color: Colors.red[600]!,
              onPressed: (){},
              child: const Text('Devolucion', style: TextStyle(fontSize: 18,color: Colors.white,)),
            );
          }
          if(index == 50){
            return PrincipalButtons(
              color:const Color.fromARGB(255, 39, 110, 41),
              onPressed: (){},
              child: const Text('Pagar', style: TextStyle(fontSize: 18,color: Colors.white,)),
            );
          }

          return  PrincipalButtons(color: Colors.black, onPressed: () {  }, child: Container(),);
        }),
      ),
    );
  }
}

//-------------------------------------------------------------------------------------------------------------------
//-------------------------------------------------------------------------------------------------------------------
//-------------------------------------------------------------------------------------------------------------------

class AddProductCategoryButton extends StatelessWidget {
  const AddProductCategoryButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<AppProvider>(context);
    return CustomButton(
        onPressed: () {
          provider.selectedView = provider.addProductCategoryView;
        },
        color: Colors.black,
        child: const Center(
          child: Icon(
            Icons.add_circle_outline,
            size: 50,
            color: Colors.white,
          ),
        ));
  }
}

//-------------------------------------------------------------------------------------------------------------------
//-------------------------------------------------------------------------------------------------------------------
//-------------------------------------------------------------------------------------------------------------------

class CategoryButton extends StatelessWidget {
  const CategoryButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<AppProvider>(context);
    return CustomButton(
      onPressed: () {
        provider.selectedView = provider.categoryView;
      },
      color: Colors.black87,
      child: const Text(
        'Category',
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}

//-------------------------------------------------------------------------------------------------------------------
//-------------------------------------------------------------------------------------------------------------------
//-------------------------------------------------------------------------------------------------------------------

class AllCategoriesButton extends StatelessWidget {
  const AllCategoriesButton({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<AppProvider>(context);
    return CustomButton(
        onPressed: () {
          provider.selectedView = provider.categoriesView;
        },
        color: Color.fromARGB(255, 21, 102, 21),
        child: const Center(
          child: Icon(
            Icons.more_vert_rounded,
            size: 45,
            color: Colors.white,
          ),
        ));
  }
}
//-------------------------------------------------------------------------------------------------------------------
//-------------------------------------------------------------------------------------------------------------------
//-------------------------------------------------------------------------------------------------------------------

class ProductButton extends StatelessWidget {
  final int index;
  const ProductButton({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<CartProductsProvider>(context);
    return CustomButton(
        onPressed: () {
          provider.addToCart(Container());
        },
        color: Colors.blueGrey[800]!,
        child: Center(
          child: Text(
            'Product $index',
            style: TextStyle(color: Colors.white),
          ),
        ));
  }
}

//-------------------------------------------------------------------------------------------------------------------
//-------------------------------------------------------------------------------------------------------------------
//-------------------------------------------------------------------------------------------------------------------

class AllProductsButton extends StatelessWidget {
  const AllProductsButton({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<AppProvider>(context);
    return CustomButton(
        onPressed: () {
          provider.selectedView = provider.productsView;
        },
        color: Colors.brown,
        child: const Center(
          child: Icon(
            Icons.more_horiz,
            size: 45,
            color: Colors.white,
          ),
        ));
  }
}
//-------------------------------------------------------------------------------------------------------------------
//-------------------------------------------------------------------------------------------------------------------
//-------------------------------------------------------------------------------------------------------------------

class OptionButton extends StatelessWidget {
  const OptionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomButton(
        onPressed: () {},
        color: Color.fromARGB(255, 104, 1, 1),
        child: const Center(
            child: Text(
          'Option',
          style: TextStyle(color: Colors.white),
        )));
  }
}

//-------------------------------------------------------------------------------------------------------------------
//-------------------------------------------------------------------------------------------------------------------
//-------------------------------------------------------------------------------------------------------------------

class AllOptions extends StatelessWidget {
  const AllOptions({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<AppProvider>(context);
    return CustomButton(
        onPressed: () {
          provider.selectedView = provider.viewOptions;
        },
        color: Colors.blueGrey,
        child: const Center(
          child: Icon(Icons.menu_rounded),
        ));
  }
}

//-------------------------------------------------------------------------------------------------------------------
//-------------------------------------------------------------------------------------------------------------------
//-------------------------------------------------------------------------------------------------------------------

class PrincipalButtons extends StatelessWidget {
  final Color color;
  final void Function() onPressed;
  final Widget child;
  const PrincipalButtons({super.key, required this.color, required this.onPressed, required this.child});

  @override
  Widget build(BuildContext context) {
    return CustomPrincipalButton(
        onPressed: onPressed,
        color: color,
        child:  Center(
          child:child ,
        ));
  }
}





















//-------------------------------------------------------------------------------------------------------------------
//-------------------------------------------------------------------------------------------------------------------
//-------------------------------------------------------------------------------------------------------------------


// class DefaultView extends StatelessWidget {
//   const DefaultView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final provider = Provider.of<AppProvider>(context);
//     return Column(
//       children: [
//         _CustomButton(provider: provider),
//         Row(
//           children: [
//             CustomPrincipalButton(onPressed: () {  }, color: Colors.red, label: Text('Button 1'),),
//             CustomPrincipalButton(onPressed: () {  }, color: Colors.blue, label: Text('Button 1'),),
//             CustomPrincipalButton(onPressed: () {  }, color: Colors.yellow, label: Text('Button 1'),),
         
//           ],
//         )
//       ],
//     );
//   }
// }

// class _CustomButton extends StatelessWidget {
//   const _CustomButton({
//     super.key,
//     required this.provider,
//   });

//   final AppProvider provider;

//   @override
//   Widget build(BuildContext context) {
//     return Wrap(
//         children: List.generate(
//       48,
//       (index) => Padding(
//           padding: const EdgeInsets.all(4.0),
//           child: SizedBox(
//             width: 135,
//             height: 80,
//             child: FloatingActionButton.extended(
//                 // tooltip: ,
//                 // -------------- COLOR DE BOTONES ----------------
//                 backgroundColor: (index == 0)
//                     ? Colors.green
//                     : (index <= 4)
//                         ? Colors.blue
//                         : (index == 5)
//                             ? Colors.red
//                             : (index >= 42) 
//                                 ? Colors.grey
//                                   : (index == 47)
//                                   ? Colors.purple
//                                     : Colors.amber,
//                 // -------------- FUNCION DE LOS BOTONES ----------------
//                 onPressed: () {
//                   (index == 0)
//                       ? provider.selectedView =
//                           provider.addProductCategoryView
//                       : (index <= 4)
//                           ? showDialog(
//                               context: context,
//                               builder: (context) {
//                                 return const AlertDialog(
//                                     content: SizedBox(
//                                         width: 400,
//                                         height: 200,
//                                         child: Center(
//                                             child: Text('Categoria '))));
//                               })
//                           : (index == 5)
//                               ? provider.selectedView =
//                                   provider.categoriesView
//                               : ((index >= 42) && (index <= 46))
//                                   ? print('Option $index ')
//                                   : (index == 47)
//                                       ? print('All options')
//                                   : print('Add product');
//                 },

//                 // -------------- CHILD DE LOS BOTONES ----------------
//                 label: (index == 0)
//                     ? const Icon(Icons.add, size: 40)
//                     : (index <= 4)
//                         ? Text('Category $index ')
//                         : (index == 5)
//                             ? const Icon(Icons.more_horiz_outlined,
//                                 size: 40)
//                             : (index >= 42)
//                                 ? Text('Option $index ')
//                                   : (index == 47)
//                                     ? const Icon(Icons.more_horiz_outlined)
//                                       : Text('Product $index ')),
//           )),
//     ));
//   }
// }

// class CustomPrincipalButton extends StatelessWidget {
//   final Color color;
//   final void Function() onPressed;
//   final Widget label;
//   const CustomPrincipalButton({
//     super.key, required this.color, required this.onPressed, required this.label,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//         child: Container(
//       margin: const EdgeInsets.all(5),
      
//       height: 120,
//       child: FloatingActionButton.extended(
//         onPressed: onPressed, 
//         label: label,
//         backgroundColor: color,
//         ),
//     ));
//   }
// }
