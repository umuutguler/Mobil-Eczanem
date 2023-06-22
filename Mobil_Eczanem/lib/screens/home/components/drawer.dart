import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../../../constants.dart';
import '../../login/login_screen.dart';

class Drawer_ extends StatelessWidget {
  const Drawer_({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Drawer(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(20), bottomRight: Radius.circular(20)),
      ),
      backgroundColor: Colors.white,
      child: Container(
          padding: EdgeInsets.only(
            top: 50,
            bottom: size.height * 0.85,
            right: 30,
            left: 30,
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  PageTransition(
                      child: GirisSayfasi(),
                      type: PageTransitionType.leftToRight));
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 50),
              decoration: BoxDecoration(
                color: uThemaColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Text("Çıkış Yap",
                      style: Theme.of(context).textTheme.headline5?.copyWith(
                          color: Colors.white, fontWeight: FontWeight.w400)),
                  Spacer(),
                  Image.asset("assets/icons/logout.png"),
                ],
              ),
            ),
          )),
    );
  }
}
