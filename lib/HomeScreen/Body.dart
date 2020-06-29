import 'package:flutter/material.dart';
import 'package:menskart2/HomeScreen/CategoryList.dart';
import 'package:menskart2/HomeScreen/const.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: <Widget>[
          CategoryList(categories: ["Shirts", "Trousers", "Shoes", "Watches"]),
          SizedBox(
            height: mDefaultPadding / 2,
          ),
          Container(
            margin: EdgeInsets.symmetric(
                horizontal: mDefaultPadding, vertical: mDefaultPadding / 2),
            height: 160,
            child: GridView.count(
              crossAxisCount: 2,
              scrollDirection: Axis.vertical,
              physics: BouncingScrollPhysics(),
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      color: AppColors.blueColor,
                    borderRadius: BorderRadius.circular(12)
                  ),
                  child: Column(
                    children: <Widget>[
                      Spacer(),

                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
