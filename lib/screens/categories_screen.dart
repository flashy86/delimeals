// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

import '../dummy_data.dart';
import '../widgets/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Deli Meal'),
        ),
        body: GridView(
          padding: const EdgeInsets.all(25),
          children: dummyCategories
              .map((catData) =>
                  CategoryItem(catData.id, catData.title, catData.color))
              .toList(),
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20),
        ));
  }
}
