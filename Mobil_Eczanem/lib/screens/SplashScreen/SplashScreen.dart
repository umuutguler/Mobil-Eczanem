import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mobil_eczanem/constants.dart';
import 'package:mobil_eczanem/screens/home/home_screen.dart';
import 'package:page_transition/page_transition.dart';

import '../login/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
        const Duration(
          seconds: 2,
        ),
        () => Navigator.pushReplacement(
            context,
            PageTransition(
                child: GirisSayfasi(), type: PageTransitionType.leftToRight)));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: uThemaColor3,
        body:
            Center(child: Image.asset("assets/images/mobil_eczane_logo.png")));
  }
}
