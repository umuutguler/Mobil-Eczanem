import 'package:flutter/material.dart';
import 'package:mobil_eczanem/constants.dart';
import 'package:mobil_eczanem/screens/home/home_screen.dart';
import 'package:page_transition/page_transition.dart';

import '../../components/navbar.dart';
import '../../products.dart';
import 'products.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({
    super.key,
    required this.a,
  });
  final int a;

  @override
  Widget build(BuildContext context) {
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
      body: Product_(i: a),
      bottomNavigationBar: Navbar(
        home: 0,
        bar: 0,
        bas: 0,
      ),
    );
  }
}
