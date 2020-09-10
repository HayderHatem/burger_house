import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/svg.dart';

import '../../widgets/build_top_bar.dart';
import 'components/categories_list.dart';
import '../product/components/products_list.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: Column(
          children: <Widget>[
            BuildTopBar(
              title: "Baghdad, Al-Mansour",
              titleIcon: Icons.keyboard_arrow_down,
              titleBeforeIcon : null,
              rightIcon : 'search_icon.svg',
              rightIconColor : Colors.black,
              leftIcon: null
            ),
            _homeAdsTitle(),
            SizedBox(
              height: 20,
            ),
            CategoriesList(),
            SizedBox(
              height: 20,
            ),
            _titleAndShowMore(),
            SizedBox(
              height: 20,
            ),
            ProductsList()
          ],
        ),
      ),
    );
  }

  Widget _homeAdsTitle() {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Food that",
            style: TextStyle(fontSize: 22),
          ),
          Text(
            "meets your needs",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }

  Widget _titleAndShowMore() {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            "Recommended",
            style: TextStyle(fontSize: 24),
          ),
          SvgPicture.asset(
            "assets/icons/more.svg",
            color: Colors.black.withOpacity(0.8),
            width: 26,
            height: 26,
          ),
        ],
      ),
    );
  }
}
