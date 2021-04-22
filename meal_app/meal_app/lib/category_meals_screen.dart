import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  static final String route = '/category-meals';

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;

    final String id = routeArgs['id'];
    final String title = routeArgs['title'];

    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: Text('Recipes screen'),
      ),
    );
  }
}
