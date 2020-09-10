import 'package:burger_res/screens/home/models/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class ProductCard extends StatelessWidget {

  final int itemIndex;
  final Product product;
  final Function press;

  const ProductCard({Key key, this.itemIndex, this.product, this.press}) : super(key: key);



  @override
  Widget build(BuildContext context) {
          return InkWell(
            onTap:  press,
            child: Container(
              padding: EdgeInsets.all(20),
              height: itemIndex.isEven ? 260 : 280,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey.withOpacity(0.1),

              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      SvgPicture.asset(
                        "assets/icons/fire_icon.svg",
                        width: 26,
                        height: 26,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        products[itemIndex].calories + ' ' + "calories",
                        style: TextStyle(fontSize: 16 , fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Container(
                    child: Image(image: AssetImage(products[itemIndex].image)),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        products[itemIndex].title ,
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        products[itemIndex].title ,
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                    ],
                  ),
                  Text(
                    products[itemIndex].price ,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          );
  }
}
