import 'package:flutter/material.dart';
import 'package:flutter_basic_exercise/model/dish.dart';

class DishItemView extends StatelessWidget {
  final Dish dish;

  const DishItemView({Key? key, required this.dish}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(dish.name),
        centerTitle: true,
      ),
      body: Center(
        child: Text('It works!'),
      ),
    );
  }
}
