import 'package:flutter/material.dart';
import 'package:mobil_eczanem/screens/home/home_screen.dart';
import 'package:page_transition/page_transition.dart';

import '../../components/navbar.dart';
import '../../constants.dart';
import '../details/screen_details.dart';
import 'components/home_products.dart';
import 'package:mobil_eczanem/products.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("Tüm Ürünler"),
        leading: BackButton(
          onPressed: () {
            Navigator.pushReplacement(
                context,
                PageTransition(
                    child: HomeScreen(), type: PageTransitionType.leftToRight));
          },
        ),
      ),
      body: More_Body(),
      bottomNavigationBar: Navbar(
        home: 0,
        bar: 0,
        bas: 0,
      ),
    );
  }
}

class More_Body extends StatelessWidget {
  const More_Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(children: <Widget>[
        More_Header(),
        Products_All(),
        Products_All(),
      ]),
    );
  }
}

class Products_All extends StatelessWidget {
  const Products_All({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      PageTransition(
                          child: DetailsScreen(
                            a: 0,
                          ),
                          type: PageTransitionType.leftToRight));
                },
                child: HomeProducts(i: 0)),
            HomeProducts(i: 1),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HomeProducts(i: 2),
            HomeProducts(i: 3),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HomeProducts(i: 4),
            HomeProducts(i: 0),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HomeProducts(i: 1),
            HomeProducts(i: 2),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            HomeProducts(i: 3),
            HomeProducts(i: 4),
          ],
        ),
      ],
    );
  }
}

class More_Header extends StatelessWidget {
  const More_Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: uPadding,
        right: uPadding,
        bottom: 36 + uPadding,
      ),
      height: 10,
      decoration: BoxDecoration(
        color: uThemaColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(40),
          bottomRight: Radius.circular(40),
        ),
      ),
    );
  }
}
