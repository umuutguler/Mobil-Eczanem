import 'package:flutter/material.dart';
import 'package:mobil_eczanem/constants.dart';
import 'package:mobil_eczanem/screens/details/screen_details.dart';
import 'package:mobil_eczanem/screens/home/components/body.dart';
import 'package:mobil_eczanem/components/navbar.dart';
import 'package:page_transition/page_transition.dart';

import 'components/drawer.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0),
      body: Body(),
      bottomNavigationBar: Navbar(
        home: 1,
        bar: 0,
        bas: 0,
      ),
      
      drawer: Drawer_(),
    );
  }
}
