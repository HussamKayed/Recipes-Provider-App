import 'package:flutter/material.dart';

import 'dummy_data.dart';
import 'category_item.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView(
          padding: EdgeInsets.all(15),
          children: <Widget>[
            ...DUMMY_CATEGORIES
                .map((categoryData) => CategoryItem(
                    id: categoryData.id,
                    title: categoryData.title,
                    color: categoryData.color))
                .toList()
          ],
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 1.5,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20),
        ),
        appBar: AppBar(
          title: const Text("meals"),
        ));
  }
}
