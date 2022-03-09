import 'package:flutter_basic_exercise/model/dish.dart';
import 'package:flutter_basic_exercise/model/ingredient.dart';

class DataInitializer {
  static List<Dish> getInitialData() {
    return [
      Dish(name: 'Siomai', imgPath: 'siomai', cookingSteps: [
        'Mix all the ingredients for the filling in a large bowl.',
        'Spoon 1 tablespoon of mixture into each wrapper. Fold and seal.',
        'Brush steamer with oil and boil water. When the water gets to a rolling boil, arrange the siomai in the steamer and steam for 15 to 20 minutes.'
      ], ingredients: [
        Ingredient(name: 'pork', amount: '1kg'),
        Ingredient(name: 'jicama', amount: '1/3 cup'),
        Ingredient(name: 'carrot', amount: '1/3 cup'),
        Ingredient(name: 'onion', amount: '1 large'),
        Ingredient(name: 'sesame oil', amount: '3 tbsp'),
        Ingredient(name: 'siomai wrapper', amount: '1 small'),
      ]),
      Dish(name: 'Filipino Chicken Adobo', imgPath: 'adobo', cookingSteps: [
        'Combine the chicken thighs, vinegar, soy sauce, garlic, peppercorns and bay leaves in a large pot. ',
        'Cover and marinate the chicken in the refrigerator for 1 to 3 hours.',
        'Bring the chicken to a boil over high heat. Lower the heat, cover and let simmer for 30 minutes, stirring occasionally. Remove the lid and simmer until the sauce is reduced and thickened and the chicken is tender, about 20 more minutes. ',
        'Serve with steamed rice.'
      ], ingredients: [
        Ingredient(name: 'chicken', amount: '4-5lb'),
        Ingredient(name: 'white vinegar', amount: '1/2 cup'),
        Ingredient(name: 'soy sauce', amount: '1/2 cup'),
        Ingredient(name: 'garlic', amount: '4 cloves'),
        Ingredient(name: 'bay leaf', amount: '3 piece'),
        Ingredient(name: 'whole peppercorn', amount: '1 tsp'),
      ]),
      Dish(name: 'Chicken Tinola', imgPath: 'tinola', cookingSteps: [
        'Sauté the garlic, onion, and ginger',
        'Put-in the chicken and cook until color turns light brown',
        'Add the fish sauce. Stir. Pour rice washing into the cooking pot. Let boil. Cover the pot and simmer for 45 minutes. Note: add water if needed.',
        'Add green papaya. Cook for 5 minutes',
        'Add the hot pepper leaves or malunggay leaves. Stir and cook for 1 minute.',
        'Season with ground black pepper. Note you can also add fish sauce or salt if needed.',
        'Transfer to a serving bowl. Serve hot. Share and enjoy!'
      ], ingredients: [
        Ingredient(name: 'chicken', amount: '1 whole'),
        Ingredient(name: 'green papaya', amount: '1/2 piece'),
        Ingredient(name: 'garlic', amount: '1 tbsp'),
        Ingredient(name: 'onion', amount: '1 piece'),
        Ingredient(name: 'ginger', amount: '1 thumb'),
        Ingredient(name: 'fish sauce', amount: '2 tbsp'),
        Ingredient(name: 'pepper leaves', amount: '1 cup'),
      ]),
      Dish(name: 'Spaghetti', imgPath: 'spaghetti', cookingSteps: [
        'In a large pot, pour the water in and bring to a boil. Put in salt.',
        'Add the Spaghetti Noodles and cook until tender (see package for cooking time) then set aside',
        'Using a separate pan, saute the garlic and onions',
        'Put-in the round meat and let cook for 5 minutes',
        'Add the hotdogs and cook for 2 minutes',
        'Put-in the tomato sauce, banana catsup, tomato paste, and brown sugar then simmer for 15 to 20 minutes',
        'Place the sauce on top of the cooked noodles and add some cheese.'
      ], ingredients: [
        Ingredient(name: 'spaghetti', amount: '2 lbs'),
        Ingredient(name: 'salt', amount: '2 tbsp'),
        Ingredient(name: 'water', amount: '36 ounces'),
        Ingredient(name: 'ketchup', amount: '1 big bottle'),
        Ingredient(name: 'onion', amount: '1 piece'),
        Ingredient(name: 'garlic', amount: '1 tsp'),
        Ingredient(name: 'ground meat', amount: '1.5 lb'),
        Ingredient(name: 'hotdog', amount: '2-4 piece'),
      ]),
      Dish(name: 'Fried Chicken', imgPath: 'fried-chicken', cookingSteps: [
        'Combine chicken, onion powder, nutmeg, cooking wine, patis, and Knorr SavorRich. Mix well and make sure that the chicken gets completely coated. Transfer everything to a resealable bag. Seal the bag and marinate overnight inside the refrigerator.',
        'Arrange the marinated chicken drumsticks on a steamer. Boil water and steam the chicken for 45 minutes.',
        'Remove the chicken from the steamer. Arrange over a wire rack. Air dry for 1 hour.',
        'Heat oil in a cooking pot or deep fryer. Fry the chicken until color turns golden brown.',
        'Arrange on a serving plate. Serve with banana ketchup. Serve and enjoy!',
      ], ingredients: [
        Ingredient(name: 'chicken drumstick', amount: '2 lbs'),
        Ingredient(name: 'Knorr SavorRich Liquid seasoning', amount: '32 g'),
        Ingredient(name: 'water', amount: '36 ounces'),
        Ingredient(name: 'cooking wine', amount: '3 tbsp'),
        Ingredient(name: 'ground nutmeg', amount: '1 tsp'),
        Ingredient(name: 'onion powder', amount: '1 tsp'),
        Ingredient(name: 'fish sauce', amount: '1 tbsp'),
      ])
    ];
  }
}
