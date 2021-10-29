import 'package:flutter/material.dart';

class MealDetailScreen extends StatelessWidget {
  static const String routeName = "/meal-detail-page";

  @override
  Widget build(BuildContext context) {
    final String mealId = ModalRoute.of(context)?.settings.arguments as String;
    return Scaffold(
        appBar: AppBar(title: Text("MesaMesaMesa")),
        body: Center(child: Text("mesamesamesa" " $mealId")));
  }
}
