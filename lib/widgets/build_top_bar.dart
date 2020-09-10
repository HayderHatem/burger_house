import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';

class BuildTopBar extends StatelessWidget {
  final String title;
  final IconData titleIcon;
  final String titleBeforeIcon;
  final String rightIcon;
  final String leftIcon;
  final Color rightIconColor;

  const BuildTopBar({
    Key key,
    this.title,
    this.titleIcon,
    this.rightIcon,
    this.leftIcon,
    this.titleBeforeIcon,
    this.rightIconColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.15,
      width: size.width,
      color: Colors.transparent,
      child: Center(
        child: Padding(
          padding: EdgeInsets.only(left: 0.0, right: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              leftIcon != null
                  ? InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_back),
                    )
                  : Text(""),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Row(
                  children: <Widget>[
                    titleBeforeIcon != null
                        ? Padding(
                            padding: const EdgeInsets.only(right: 8.0),
                            child: SvgPicture.asset(
                              "assets/icons/$titleBeforeIcon",
                              width: 20,
                              height: 20,
                            ),
                          )
                        : Text(""),
                    Text(
                      title,
                      style: TextStyle(fontSize: 14),
                    ),
                    titleIcon != null ? Icon(titleIcon) : Text("")
                  ],
                ),
              ),
              InkWell(
                onTap: () {},
                child: SvgPicture.asset(
                  "assets/icons/$rightIcon",
                  color: rightIconColor,
                  width: 20,
                  height: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
