import 'package:flutter/material.dart';
import 'package:flutter_basic_exercise/model/dish.dart';
import 'package:flutter_basic_exercise/screens/dish_item_view.dart';
import 'package:flutter_basic_exercise/util/common.dart';
import 'package:flutter_basic_exercise/util/data_initializer.dart';

class DishListView extends StatelessWidget {
  DishListView({Key? key}) : super(key: key);

  final List<Dish> dishList = DataInitializer.getInitialData();

  Widget _createDishCard(BuildContext context, int index) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: ListTile(
        title: Text(dishList[index].name),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DishItemView(
                dish: dishList[index],
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenData = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Dishes List'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(screenData.width * 0.05),
            child: Image.asset(
              'assets/dishes-main.jpg',
              fit: BoxFit.cover,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 10, top: 15),
            child: Text(
              'My favorite dishes',
              style: Common.pageHeadingTextStyle,
            ),
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: dishList.length,
              itemBuilder: (context, index) {
                return _createDishCard(context, index);
              },
            ),
          )
        ],
      ),
    );
  }
}
