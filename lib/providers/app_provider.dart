// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:prueba_botones/views/buttons/add_client_view.dart';
import 'package:prueba_botones/views/buttons/add_product_category_view.dart';
import 'package:prueba_botones/views/buttons/all_categories_view.dart';
import 'package:prueba_botones/views/buttons/category_view.dart';


import 'package:prueba_botones/views/buttons/default_view.dart';
import 'package:prueba_botones/views/buttons/options_view.dart';
import 'package:prueba_botones/views/buttons/products_view.dart';
import 'package:prueba_botones/views/user_options/default_view_user.dart';
import 'package:prueba_botones/views/user_options/product_info_view.dart';
import 'package:prueba_botones/widgets/custom_row_searchfields.dart';
import 'package:prueba_botones/widgets/default_row_searchfields.dart';

class AppProvider extends ChangeNotifier {
  Widget _selectedView = const DefaultView();
  Widget get viewSelected => _selectedView;
  set selectedView(Widget view) {
    _selectedView = view;
    notifyListeners();
  }

//------------------------------------------------------------------------------------------------------------
  Widget _viewDefault = const DefaultView();

  Widget get defaultView => _viewDefault;

  set defaultView(Widget view) {
    _viewDefault = view;
    notifyListeners();
  }

//------------------------------------------------------------------------------------------------------------
  Widget _viewCategories = const AllCategoriesView();

  Widget get categoriesView => _viewCategories;

  set categoriesView(Widget categoriesView) {
    _viewCategories = categoriesView;
    notifyListeners();
  }
//------------------------------------------------------------------------------------------------------------

  Widget _viewProducts = const ProductsView();

  Widget get productsView => _viewProducts;

  set productsView(Widget productsView) {
    _viewProducts = productsView;
    notifyListeners();
  }
  //------------------------------------------------------------------------------------------------------------

  Widget _viewAddProductCategory = const AddProductCategoryView();

  Widget get addProductCategoryView => _viewAddProductCategory;

  set addProductCategoryView(Widget addProductCategoryView) {
    _viewAddProductCategory = addProductCategoryView;
    notifyListeners();
  }
//------------------------------------------------------------------------------------------------------------

  Widget _defaultViewUserOptions = const DefaultViewUser();

  Widget get defaultViewUserOptions => _defaultViewUserOptions;

  set defaultViewUserOptions(Widget defaultViewUserOptions) {
    _defaultViewUserOptions = defaultViewUserOptions;
    notifyListeners();
  }

//------------------------------------------------------------------------------------------------------------

Widget _productsInfoView = const ProductInfoView();

  Widget get productsInfoView => _productsInfoView;

  set productsInfoView(Widget productsInfoView) {
    _productsInfoView = productsInfoView;
    notifyListeners();
  }



//------------------------------------------------------------------------------------------------------------

  Widget _viewAddClient = const AddClientView();

  Widget get viewAddClient => _viewAddClient;

  set viewAddClient(Widget viewAddClient) {
    _viewAddClient = viewAddClient;
    notifyListeners();
  }
//------------------------------------------------------------------------------------------------------------

  Widget _viewOptions = const OptionsView();

  Widget get viewOptions => _viewOptions;

  set viewOptions(Widget viewOptions) {
    _viewOptions = viewOptions;
    notifyListeners();
  }
//------------------------------------------------------------------------------------------------------------
  Widget _categoryView = const CategoryView();  

  Widget get categoryView => _categoryView;

  set categoryView(Widget categoryView) {
    _categoryView = categoryView;
    notifyListeners();
  }

//------------------------------------------------------------------------------------------------------------
// Customm Row Search Fields 
//------------------------------------------------------------------------------------------------------------
 Widget _defaultRowSearchFields = const DefaultRowSearchFields();

  Widget get defaultRowSearchFields => _defaultRowSearchFields;

  set defaultRowSearchFields(Widget defaultRowSearchFields) {
    _defaultRowSearchFields = defaultRowSearchFields;
    notifyListeners();
  }

//------------------------------------------------------------------------------------------------------------

//------------------------------------------------------------------------------------------------------------

  Widget _tapClient =  const TapClient();

  Widget get tapClient => _tapClient;

  set tapClient(Widget tapClient) {
    _tapClient = tapClient;
    notifyListeners();
  }

//------------------------------------------------------------------------------------------------------------

  Widget _tapProduct = const TapProduct();

  Widget get tapProduct => _tapProduct;

  set tapProduct(Widget tapProduct) {
    _tapProduct = tapProduct;
    notifyListeners();
  }

//------------------------------------------------------------------------------------------------------------

  

 



//------------------------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------------------------
//------------------------------------------------------------------------------------------------------------
}









// Widget _productsView() {
//   return Wrap(
//     children: List.generate(
//         54,
//         (index) => Padding(
//               padding: const EdgeInsets.all(4.0),
//               child: SizedBox(
//                 width: 135,
//                 height: 80,
//                 child: FloatingActionButton.extended(
//                   onPressed: () {},
//                   label: Text(
//                     '$index',
//                   ),
//                 ),
//               ),
//             )),
//   );
// }
// Widget _categoriesView() {
//   return Wrap(
//     children: List.generate(
//         54,
//         (index) => Padding(
//               padding: const EdgeInsets.all(4.0),
//               child: SizedBox(
//                 width: 135,
//                 height: 80,
//                 child: FloatingActionButton.extended(
//                   onPressed: () {},
//                   label: Text(
//                     '$index',
//                   ),
//                 ),
//               ),
//             )),
//   );
// }

// Widget _defaultView() {

//   return Wrap(
//     children:List.generate(54, (index) => Padding(
//         padding: const EdgeInsets.all(4.0),
//         child: SizedBox(
//           width: 135,
//           height:80,
//           child: FloatingActionButton.extended(
//             // -------------- COLOR DE BOTONES ----------------
//             backgroundColor:
//             (index == 0)
//             ? Colors.green
//             :(index <= 4)
//             ? Colors.blue
//             :(index == 5)
//             ? Colors.red
//             : (index >= 42)
//             ? Colors.grey
//             : Colors.amber
//             ,
//             // -------------- FUNCION DE LOS BOTONES ----------------
//             onPressed: (){
//               (index == 0)
//               ? print('add')
//               :(index <= 4)
//               ? AlertDialog(content: Center(child: Text('Categoria ')))
//               :(index == 5)
//               ?
//             },

//             // -------------- CHILD DE LOS BOTONES ----------------
//             label: (index == 0)
//             ? const Icon(Icons.add,size: 40)
//             : (index <= 4)
//             ? Text('Category $index ')
//             : (index == 5)
//             ? const Icon(Icons.more_horiz_outlined,size: 40)
//             : (index >= 42)
//             ? Text('Option $index ')
//             : Text('Product $index ')

//         ),
//       )),)
//   );
// }