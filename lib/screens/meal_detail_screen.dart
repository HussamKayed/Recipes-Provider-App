import 'package:flutter/material.dart';
import '../dummy_data.dart';

class MealDetailScreen extends StatelessWidget {
  static const String routeName = "/meal-detail-page";

  Widget _buildTitle(String text, BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        child: Text(text, style: Theme.of(context).textTheme.headline6));
  }

  Widget _buildList(Widget ListView, BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.blue.shade100,
            border: Border.all(width: 5, color: Colors.red.shade900)),
        margin: EdgeInsets.only(bottom: 5),
        width: MediaQuery.of(context).size.width * 0.7,
        height: MediaQuery.of(context).size.height * 0.5,
        child: ListView);
  }

  @override
  Widget build(BuildContext context) {
    final String mealId = ModalRoute.of(context)?.settings.arguments as String;
    final selectedMeal = DUMMY_MEALS.firstWhere((meal) => meal.id == mealId);
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "${selectedMeal.title}",
          ),
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            Container(
                child: Image.network(selectedMeal.imageUrl, fit: BoxFit.cover),
                height: 300,
                width: double.infinity),
            _buildTitle("Ingredients", context),
            _buildList(
                ListView.builder(
                  itemBuilder: (ctx, index) {
                    return ListTile(
                        leading: CircleAvatar(child: Text("# ${index + 1}")),
                        title: Text(
                          "${selectedMeal.ingredients[index]}",
                          style: Theme.of(context).textTheme.headline6,
                          textAlign: TextAlign.center,
                        ));
                  },
                  itemCount: selectedMeal.ingredients.length,
                ),
                context),
            _buildTitle("Steps", context),
            _buildList(
                ListView.builder(
                  itemBuilder: (ctx, index) {
                    return Column(
                      children: [
                        ListTile(
                            leading:
                                CircleAvatar(child: Text("# ${index + 1}")),
                            title: Text("${selectedMeal.steps[index]}",
                                style: Theme.of(context).textTheme.headline6)),
                        Divider(
                          thickness: 5,
                        ),
                      ],
                    );
                  },
                  itemCount: selectedMeal.steps.length,
                ),
                context)
          ],
        )));
  }
}
