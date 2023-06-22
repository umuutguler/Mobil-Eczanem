import 'package:flutter/material.dart';
import 'package:mobil_eczanem/constants.dart';
import 'header_with_searchbox.dart';
import 'title_with_more.dart';
import 'home_products.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // It will provie us total height  and width of our screen
    Size size = MediaQuery.of(context).size;
    // it enable scrolling on small device
    return SingleChildScrollView(
      child: Column(children: <Widget>[
        HeaderWithSearchBox(size: size),
        TitleWithMoreBtn(
          title: "Reçetesiz İlaçlar",
          press: () {},
        ),
        Home_Products(),
      ]),
    );
  }
}
