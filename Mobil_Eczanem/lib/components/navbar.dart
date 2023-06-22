import 'package:flutter/material.dart';
import 'package:mobil_eczanem/constants.dart';
import 'package:mobil_eczanem/screens/details/screen_details.dart';
import 'package:mobil_eczanem/screens/home/home_screen.dart';
import 'package:page_transition/page_transition.dart';

import '../screens/Cart/cart_screen.dart';
import '../screens/barcode/barcode.dart';

class Navbar extends StatelessWidget {
  const Navbar({
    Key? key,
    required this.home,
    required this.bar,
    required this.bas,
  }) : super(key: key);
  final int home, bar, bas;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          left: uPadding * 2, right: uPadding * 2, bottom: uPadding),
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -10),
            blurRadius: 35,
            color: uThemaColor.withOpacity(0.4),
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    PageTransition(
                        child: HomeScreen(),
                        type: PageTransitionType.leftToRightWithFade));
              },
              icon: Image.asset(icons[home].image)),
          IconButton(
              padding: EdgeInsets.only(top: 10),
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    PageTransition(
                        child: Barcode(),
                        type: PageTransitionType.leftToRightWithFade));
              },
              icon: Image.asset(icons[bar].image1)),
          IconButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    PageTransition(
                        child: CartScreen(),
                        type: PageTransitionType.leftToRightWithFade));
              },
              icon: Image.asset(icons[bas].image2)),
        ],
      ),
    );
  }
}
