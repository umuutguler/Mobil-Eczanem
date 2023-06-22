import 'package:flutter/material.dart';
import 'package:mobil_eczanem/constants.dart';
import 'package:mobil_eczanem/screens/SplashScreen/SplashScreen.dart';
import 'package:mobil_eczanem/screens/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // debug yazısını kaldır
      title: 'Mobil Eczanem',
      theme: ThemeData(6
        scaffoldBackgroundColor: uBackgroundColor,
        colorScheme: ColorScheme.light().copyWith(primary: uThemaColor),
        textTheme: Theme.of(context).textTheme.apply(bodyColor: uTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(),
    );
  }
}
