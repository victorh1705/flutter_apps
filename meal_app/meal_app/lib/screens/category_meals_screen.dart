import 'package:flutter/material.dart';
import 'package:meal_app/dummy_data.dart';

class CategoryMealsScreen extends StatelessWidget {
  static final String route = '/category-meals';

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;

    final id = routeArgs['id'];
    final title = routeArgs['title'];
    final categoryMeals = DUMMY_MEALS
        .where((item) => item.categories.contains(id))
        .toList();

    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: ListView.builder(
        itemBuilder: (ctx, index) => Text(categoryMeals[index].title),
        itemCount: categoryMeals.length,
      ),
    );
  }
}
