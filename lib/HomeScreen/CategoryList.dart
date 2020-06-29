import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:menskart2/HomeScreen/const.dart';

class CategoryList extends StatefulWidget {
  final List<String> categories;

  CategoryList({@required this.categories});

  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  int currentIndex = 0;
  bool isSelected;

  List<Widget> _buildCategoryList() {
    return widget.categories.map((category) {
      var index = widget.categories.indexOf(category);
      isSelected = currentIndex == index;
      return Container(
        margin: EdgeInsets.symmetric(vertical: 0),
        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: mDefaultPadding, horizontal: mDefaultPadding - 8),
          child: GestureDetector(
            onTap: () {
              setState(() {
                currentIndex = index;
              });
            },
            child: Text(
              category,
              style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                fontWeight: FontWeight.normal,
                color: isSelected ? AppColors.blueColor : AppColors.greenColor,
                fontSize: isSelected ? 22 : 16,
              )),
            ),
          ),
        ),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: _buildCategoryList(),
    );
  }
}
