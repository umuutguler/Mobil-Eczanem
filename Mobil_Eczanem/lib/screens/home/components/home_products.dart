import 'package:flutter/material.dart';
import 'package:mobil_eczanem/constants.dart';
import 'package:mobil_eczanem/screens/details/screen_details.dart';
import 'package:mobil_eczanem/products.dart';
import 'package:page_transition/page_transition.dart';

class Home_Products extends StatelessWidget {
  const Home_Products({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
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
            child: HomeProducts(
              i: 0,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  PageTransition(
                      child: DetailsScreen(
                        a: 1,
                      ),
                      type: PageTransitionType.leftToRight));
            },
            child: HomeProducts(
              i: 1,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  PageTransition(
                      child: DetailsScreen(
                        a: 2,
                      ),
                      type: PageTransitionType.leftToRight));
            },
            child: HomeProducts(
              i: 2,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  PageTransition(
                      child: DetailsScreen(
                        a: 3,
                      ),
                      type: PageTransitionType.leftToRight));
            },
            child: HomeProducts(
              i: 3,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  PageTransition(
                      child: DetailsScreen(
                        a: 4,
                      ),
                      type: PageTransitionType.leftToRight));
            },
            child: HomeProducts(
              i: 4,
            ),
          ),
        ],
      ),
    );
  }
}

class HomeProducts extends StatelessWidget {
  const HomeProducts({
    Key? key,
    required this.i,
  }) : super(key: key);

  final int i;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.all(uPadding / 2),
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          // Image.asset("image konum")
          Image.asset(products[i].image),
          GestureDetector(
            child: Container(
              padding: EdgeInsets.all(uPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: uThemaColor.withOpacity(0.25),
                  )
                ],
              ),
              child: Row(children: <Widget>[
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: products[i].title + "\n",
                        style: Theme.of(context).textTheme.button,
                      ),
                      TextSpan(
                        text: products[i].title2 + "\n",
                        style: Theme.of(context).textTheme.button,
                      ),
                      TextSpan(
                        text: products[i].county,
                        style: TextStyle(color: uThemaColor.withOpacity(0.5)),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Text(
                  products[i].price,
                  style: Theme.of(context)
                      .textTheme
                      .button
                      ?.copyWith(color: uThemaColor),
                )
              ]),
            ),
          )
        ],
      ),
    );
  }
}
