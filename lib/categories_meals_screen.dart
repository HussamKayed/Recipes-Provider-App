import 'package:flutter/material.dart';

class CategoriesMealsScreen extends StatelessWidget {
  static const String routeName = "/category_meals";
  // final String categoryId;
  // final String categorytitle;

  // CategoriesMealsScreen(this.categoryId, this.categorytitle);

  @override
  Widget build(BuildContext context) {
    final routesArguments =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    final categoryId = routesArguments["id"];
    final categoryTitle = routesArguments["title"];
    return Scaffold(
        body: Center(child: Text("Recipe")),
        appBar: AppBar(
          title: Text("${categoryTitle}"),
        ));
  }
}
