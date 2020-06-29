import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.count(crossAxisCount: 2,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: Colors.black
          ),
        )
      ],
      ),
    );
  }
}
