// ignore_for_file: sort_child_properties_last, prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobil_eczanem/screens/home/components/body.dart';
import 'package:page_transition/page_transition.dart';
import '../../components/navbar.dart';
import '../../constants.dart';
import '../home/home_screen.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: BackButton(
          onPressed: () {
            Navigator.pushReplacement(
                context,
                PageTransition(
                    child: HomeScreen(), type: PageTransitionType.leftToRight));
          },
        ),
      ),
      body: CartBody(size: size),
      bottomNavigationBar: Navbar(
        home: 0,
        bar: 0,
        bas: 1,
      ),
    );
  }
}

class CartBody extends StatelessWidget {
  const CartBody({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        height: size.height * 0.1,
        child: Stack(children: <Widget>[
          Container(
            height: size.height * 0.06,
            decoration: BoxDecoration(
              color: uThemaColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36),
              ),
            ),
          ),
          Positioned(
            top: 0,
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: uPadding),
                padding: EdgeInsets.symmetric(horizontal: uPadding),
                height: 34,
                child: Image.asset("assets/icons/cart.png")),
          ),
        ]),
      ),
      Padding(
        padding: const EdgeInsets.all(uPadding),
        child: Row(
          children: [
            Container(
              width: size.width * 0.4,
              child: Image.asset("assets/images/image_1.jpg"),
            ),
            Expanded(
              child: Container(
                  padding: EdgeInsets.all(uPadding),
                  height: size.width * 0.4,
                  width: size.width * 0.6 - 40,
                  child: Column(children: [
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                        text: "ALOPEXY T Deri Spreyi" + "\n",
                        style: Theme.of(context)
                            .textTheme
                            .headline5
                            ?.copyWith(color: uTextColor, fontSize: 15),
                      ),
                      TextSpan(
                        text: "60ml",
                        style: Theme.of(context)
                            .textTheme
                            .headline5
                            ?.copyWith(color: uThemaColor, fontSize: 10),
                      ),
                    ])),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: ElevatedButton(
                              style: ButtonStyle(),
                              child: Icon(Icons.remove),
                              onPressed: () {}),
                        ),
                        Padding(padding: EdgeInsets.all(2)),
                        Text(
                          "     5     ",
                          style: Theme.of(context)
                              .textTheme
                              .headline5
                              ?.copyWith(color: uTextColor, fontSize: 20),
                        ),
                        Padding(padding: EdgeInsets.all(2)),
                        Expanded(
                          child: ElevatedButton(
                              child: Icon(Icons.add), onPressed: () {}),
                        ),
                      ],
                    ),
                    Spacer(),
                    Text(
                      "300.48TL",
                      style: Theme.of(context)
                          .textTheme
                          .headline5
                          ?.copyWith(color: uTextColor, fontSize: 20),
                    )
                  ]),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                  )),
            ),
          ],
        ),
      ),
      Spacer(),
      Container(
        height: size.height * 0.1,
        child: Stack(children: <Widget>[
          Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: 18, horizontal: uPadding * 2),
              child: Row(
                children: [
                  Column(
                    children: [
                      Text("Toplam",
                          style: Theme.of(context)
                              .textTheme
                              .headline5
                              ?.copyWith(color: Colors.white, fontSize: 20)),
                      Text("300.48 TL",
                          style: Theme.of(context)
                              .textTheme
                              .headline5
                              ?.copyWith(color: Colors.white, fontSize: 20)),
                    ],
                  ),
                  Spacer(),
                  TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.white, // Background Color
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Satın Al",
                          style: TextStyle(color: uThemaColor, fontSize: 15),
                        ),
                      ))
                ],
              ),
            ),
            height: size.height * 0.5,
            decoration: BoxDecoration(
              color: uThemaColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(36),
                topRight: Radius.circular(36),
              ),
            ),
          ),
        ]),
      )
    ]);
  }
}
