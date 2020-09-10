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
    );
  }
}
