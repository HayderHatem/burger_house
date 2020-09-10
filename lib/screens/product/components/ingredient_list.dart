import 'package:burger_res/screens/home/models/category.dart';
import 'package:burger_res/screens/product/models/ingredient.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class IngredientList extends StatefulWidget {
  @override
  _IngredientListState createState() => _IngredientListState();
}

class _IngredientListState extends State<IngredientList> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: ingredients.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
                padding: const EdgeInsets.only(left: 0.0, right: 20.0),
                child: Container(
                  width: 60,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.withOpacity(0.3)),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(ingredients[index].image),
                        ),
                      ),
                    ),
                  ),
                ));
          }),
    );
  }
}
