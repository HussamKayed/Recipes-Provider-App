import 'package:flutter/material.dart';
import 'package:third_flutter_app/dummy_data.dart';

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
    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();
    return Scaffold(
        body: ListView.builder(
          itemBuilder: (ctx, index) {
            return Text(categoryMeals[index].title);
          },
          itemCount: categoryMeals.length,
        ),
        appBar: AppBar(
          title: Text("$categoryTitle"),
        ));
  }
}
