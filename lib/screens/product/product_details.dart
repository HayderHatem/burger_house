import 'package:burger_res/screens/home/models/product.dart';
import 'package:flutter/material.dart';

import 'components/product_body.dart';

class ProductDetails extends StatelessWidget {
  final Product product ;
  const ProductDetails({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ProductBody(
        product: product,
      ),

      floatingActionButton : Container(
        height: 65.0,
        width: 65.0,
        child: FittedBox(
          child: FloatingActionButton(
              elevation: 10.0,
              child: new Icon(Icons.add_shopping_cart,color: Colors.yellow.withOpacity(0.8),),
              backgroundColor: Color(0xFF0A1236),
              onPressed: (){}
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
