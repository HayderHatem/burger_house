import 'package:burger_res/screens/home/models/category.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CategoriesList extends StatefulWidget {
  @override
  _CategoriesListState createState() => _CategoriesListState();
}

class _CategoriesListState extends State<CategoriesList> {
  int _isSelected = 0;

  @override
  int selectCategory() {
      setState(() {
        _isSelected == 0 ? _isSelected = 1 : _isSelected = 0;
      });
  }

@override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.only(left: 0.0, right: 10.0),
              child: InkWell(
                onTap: () {
                  selectCategory();
                },
                child: Container(
                  width: 140,
                  height: 60,
                  decoration: BoxDecoration(
                    color: index == 0
                        ? Colors.orange.withOpacity(0.6)
                        : Colors.grey.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Image(
                        image: AssetImage(
                          categories[index].image,
                        ),
                        height: 40,
                        width: 40,
                      ),
                      Text(
                        categories[index].title,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
