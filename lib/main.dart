import 'package:flutter/material.dart';
import 'package:flutter_basic_exercise/dish_list_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.orangeAccent,
          secondary: Colors.redAccent,
        ),
      ),
      home: const DishListView(),
    );
  }
}
