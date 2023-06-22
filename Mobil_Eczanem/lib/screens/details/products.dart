import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../products.dart';

class Product_ extends StatelessWidget {
  const Product_({
    Key? key,
    required this.i,
  }) : super(key: key);
  final int i;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: const EdgeInsets.all(uPadding),
        child: Column(children: [
          Container(
            child: Image.asset(products[i].image),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: uPadding * 3, top: uPadding),
            child: Row(children: <Widget>[
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: products[i].title + " " + products[i].title2 + "\n",
                      style: Theme.of(context).textTheme.headline5?.copyWith(
                          color: uTextColor, fontWeight: FontWeight.bold),
                    ),
                    TextSpan(
                      text: products[i].county,
                      style: Theme.of(context)
                          .textTheme
                          .headline5
                          ?.copyWith(color: uThemaColor, fontSize: 15),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Text(
                products[i].price,
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    ?.copyWith(color: uTextColor, fontWeight: FontWeight.bold),
              )
            ]),
          ),
          TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                backgroundColor: uThemaColor, // Background Color
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Sepete Ekle",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ))
        ]),
      ),
    );
  }
}
