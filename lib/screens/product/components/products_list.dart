import 'package:burger_res/screens/product/components/product_card.dart';
import 'package:burger_res/screens/home/models/product.dart';
import 'package:burger_res/screens/product/product_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';

class ProductsList extends StatefulWidget {
  @override
  _ProductsListState createState() => _ProductsListState();
}

class _ProductsListState extends State<ProductsList> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: StaggeredGridView.countBuilder(
        padding: EdgeInsets.only(right: 20),
        crossAxisCount: 2,
        itemCount: products.length,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        itemBuilder: (context, index) => ProductCard(
          itemIndex : index,
          product : products[index],
          press: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProductDetails(
                  product: products[index],
                ),
              ),
            );
          }
        ),
        staggeredTileBuilder: (index) => StaggeredTile.fit(1),
      ),
    );
  }
}

//Route _createRoute() {
//  return PageRouteBuilder(
//    pageBuilder: (context, animation, secondaryAnimation) => ProductDetails(),
//    transitionsBuilder: (context, animation, secondaryAnimation, child) {
//      var begin = Offset(1.0, 0.0);
//      var end = Offset.zero;
//      var curve = Curves.easeInOut;
//
//      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
//
//      return SlideTransition(
//        position: animation.drive(tween),
//        child: child,
//      );
//    },
//  );
//}
