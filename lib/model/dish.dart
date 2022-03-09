import 'package:flutter_basic_exercise/model/ingredient.dart';

class Dish {
  final String name;
  final String imgPath;
  final List<Ingredient> ingredients;
  final List<String> cookingSteps;

  Dish({required this.name,
      required this.imgPath,
      required this.ingredients,
      required this.cookingSteps});
}
