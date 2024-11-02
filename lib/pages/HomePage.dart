import 'package:flutter/material.dart';

import 'package:food_shop/widgets/All_food.dart';
import 'package:food_shop/widgets/HomeAppBar.dart';
import 'package:food_shop/widgets/CategoriesWidget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          HomeAppBar(),
          Categorieswidget(),
          Padding(
            padding: EdgeInsets.only(top: 25, right: 300, ),
            child: Text(
              "All food",
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Allfood(),
            ),
          ),
          
        ],
      ),
    );
  }
}