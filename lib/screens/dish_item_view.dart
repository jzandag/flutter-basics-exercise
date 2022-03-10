import 'package:flutter/material.dart';
import 'package:flutter_basic_exercise/model/dish.dart';
import 'package:flutter_basic_exercise/util/common.dart';

class DishItemView extends StatelessWidget {
  final Dish dish;

  const DishItemView({Key? key, required this.dish}) : super(key: key);

  Widget _createIngredientsTable() {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Table(
        border: TableBorder.all(),
        columnWidths: const <int, TableColumnWidth>{
          0: FlexColumnWidth(1),
          1: FlexColumnWidth(3),
        },
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        children: dish.ingredients.map(
              (ingredient) => TableRow(children: [
                Container(
                    padding: const EdgeInsets.all(5),
                    child: Text(ingredient.amount)),
                Container(
                    padding: const EdgeInsets.all(5),
                    child: Text(ingredient.name))
              ],),
            ).toList(),
      ),
    );
  }

  Widget _createCookingStepsTable() {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Table(
        border: TableBorder.all(),
        columnWidths: const <int, TableColumnWidth>{
          0: FlexColumnWidth(1),
          1: FlexColumnWidth(6),
        },
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        children: dish.cookingSteps.asMap().map(
              (i, step) => MapEntry(
                i,
                TableRow(children: [
                  Container(
                      padding: const EdgeInsets.all(5),
                      child: Center(child: Text('${i + 1}'))),
                  Container(padding: const EdgeInsets.all(5), child: Text(step))
                ]),
              ),
            ).values.toList(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenData = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text(dish.name),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: screenData.width * 0.05),
              child: Image.asset(
                'assets/${dish.imgPath}.jpg',
                fit: BoxFit.cover,
                width: screenData.width * 0.8,
                height: screenData.height * 0.4,
              ),
            ),
            const Text(
              'Ingredients',
              style: Common.pageHeadingTextStyle,
            ),
            _createIngredientsTable(),
            const Text(
              'Cooking Steps',
              style: Common.pageHeadingTextStyle,
            ),
            _createCookingStepsTable()
          ],
        ),
      ),
    );
  }
}
