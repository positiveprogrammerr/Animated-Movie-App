import 'package:flutter/material.dart';

class CategoryModel with ChangeNotifier {
  String id;
  String title;

  CategoryModel({
    required this.id,
    required this.title,
  });
}

class CategoriesModel with ChangeNotifier {
  final List<CategoryModel> _categories = [
    CategoryModel(id: 'f', title: 'For you'),
    CategoryModel(id: 'p', title: 'Popular'),
    CategoryModel(id: 't', title: 'Top Films'),
    CategoryModel(id: 'l', title: 'Last Films'),
  ];

  List<CategoryModel> get categories {
    return _categories;
  }
}
