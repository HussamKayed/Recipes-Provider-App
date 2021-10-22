import 'package:flutter/material.dart';

class CategoriesMealsScreen extends StatelessWidget {
  final String categoryId;
  final String categorytitle;

  CategoriesMealsScreen(this.categoryId, this.categorytitle);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(child: Text("Recipe")),
        appBar: AppBar(
          title: Text("${categorytitle}"),
        ));
  }
}
