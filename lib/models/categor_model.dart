import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CategoryModel {
  String name;
  String iconPath;
  Color boxColor;

  CategoryModel({
    required this.name,
    required this.iconPath,
    required this.boxColor,
  });

  static List<CategoryModel> getCategories(){
    List<CategoryModel> categories = [];

    categories.add(
      CategoryModel(
        name: 'Ontbijt',
        iconPath: 'assets/icons/breakfast.png',
        boxColor: Color(0xff92A3FD),
      )
    );
    
    categories.add(
      CategoryModel(
        name: 'Lunch',
        iconPath: 'assets/icons/sandwich.png',
        boxColor: Color.fromARGB(255, 244, 146, 253),
      )
    );
    
    categories.add(
      CategoryModel(
        name: 'Diner',
        iconPath: 'assets/icons/diner.png',
        boxColor: Color.fromARGB(255, 253, 210, 146),
      )
    );
    
    categories.add(
      CategoryModel(
        name: 'Tussendoortje',
        iconPath: 'assets/icons/snack.png',
        boxColor: Color.fromARGB(255, 146, 249, 253),
      )
    );
    return categories;
  }
}