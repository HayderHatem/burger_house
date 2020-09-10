import 'package:burger_res/screens/home/models/product.dart';
import 'package:burger_res/widgets/build_top_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'ingredient_list.dart';

class ProductBody extends StatefulWidget {
  final Product product;

  const ProductBody({Key key, this.product}) : super(key: key);

  @override
  _ProductBodyState createState() => _ProductBodyState();
}

class _ProductBodyState extends State<ProductBody> {
  int _numberCount = 0;
  int increaseCount() {
    setState(() {
      _numberCount++;
    });
  }

  int decreaseCount() {
    setState(() {
      _numberCount--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: Column(
          children: <Widget>[
            BuildTopBar(
                title: widget.product.calories + ' ' + 'Calories',
                titleIcon: null,
                rightIcon: 'heart_icon.svg',
                rightIconColor: Colors.orange.withOpacity(0.5),
                titleBeforeIcon: 'fire_icon.svg',
                leftIcon: 'left-arrow.svg'),
            Container(
              height: 300,
              width: 360,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(widget.product.image),
                ),
                borderRadius: BorderRadius.circular(120.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 0.5,
                    blurRadius: 15,
                    offset: Offset(0, 10), // changes position of shadow
                  ),
                ],
              ),
            ),
            Container(
              height: 60,
              width: 130,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.1),
                borderRadius: BorderRadius.circular(120.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.1),
                    spreadRadius: 0.5,
                    blurRadius: 15,
                    offset: Offset(0, 10), // changes position of shadow
                  ),
                ],
              ),
              child: Center(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        Icons.add,
                        size: 24,
                        color: Colors.black.withOpacity(0.8)
                      ),
                      onPressed: () {
                        increaseCount();
                      },
                    ),
                    Text(
                      "$_numberCount",
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.black.withOpacity(0.8)
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.remove,
                        size: 24,
                        color: Colors.black.withOpacity(0.8)
                      ),
                      onPressed: () {
                        decreaseCount();
                      },
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top : 16.0,right: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        widget.product.title ,
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 8,),
                      Text(
                        widget.product.title ,
                        style: TextStyle(fontSize: 18, color: Colors.grey),
                      ),
                    ],
                  ),
                  Text(
                    widget.product.price ,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            _buildIngredientsRowTitle(title : "Ingredients"),
            SizedBox(
              height: 20,
            ),
            IngredientList(),
            SizedBox(
              height: 20,
            ),
            _buildIngredientsRowTitle(title : "Details"),
            SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                widget.product.description ?? "No Description" ,
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildIngredientsRowTitle({String title}) {
    return Padding(
      padding: const EdgeInsets.only(top : 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "$title",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),

            ],
          ),
        ],
      ),
    );
  }
}
