import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gradient_text/gradient_text.dart';
import 'package:menskart2/HomeScreen/Body.dart';
import 'package:menskart2/HomeScreen/const.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      elevation: 6,
      backgroundColor: Colors.white,
      leading: IconButton(
        icon: SvgPicture.asset("assets/icons/menu.svg"),
        onPressed: () {},
      ),
      centerTitle: true,
      title: GradientText(
        'MensKart 2',
        gradient: LinearGradient(
            colors: [AppColors.greenColor, AppColors.blueColor,]),
        style: GoogleFonts.montserrat(textStyle: TextStyle(fontWeight: FontWeight.normal,fontSize: 24))
      ),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset("assets/icons/scart.svg"),
          onPressed: () {},
        )
      ],
    );
  }
}

