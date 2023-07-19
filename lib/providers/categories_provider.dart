import 'package:flutter/material.dart';
import 'package:prueba_botones/config/data/categories.dart';
import 'package:prueba_botones/config/entities/category.dart';
import 'package:prueba_botones/models/category_model.dart';

class CategoriesProvider extends ChangeNotifier{

   final List<Category> categories = [];


  bool initialLoading = true;

  Future<void> loadCategories() async {
    await Future.delayed(const Duration(seconds: 2));
    final List<Category> dataCategories = categoriesD
        .map((category) => CategoryModel.fromJson(category).toCategoryEntitie())
        .toList();
    categories.addAll(dataCategories);
    initialLoading = false;
    notifyListeners();
  }



}