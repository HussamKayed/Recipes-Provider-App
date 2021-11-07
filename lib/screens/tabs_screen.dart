import 'package:flutter/material.dart';
import '/screens/categories_screen.dart';
import '/screens/favorites_screen.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({Key? key}) : super(key: key);

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
              title: Text("meals"),
              bottom: TabBar(
                tabs: <Widget>[
                  Tab(icon: Icon(Icons.category), text: "Categories"),
                  Tab(icon: Icon(Icons.star), text: "Favorites")
                ],
              )),
          body: TabBarView(
              children: <Widget>[CategoriesScreen(), FavoritesScreen()]),
        ));
  }
}
