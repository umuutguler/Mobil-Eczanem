import 'package:flutter/material.dart';

// renkler

const uThemaColor = Color(0xFFFF4C4C);
const uThemaColor2 = Color(0xFFA62525);
const uThemaColor3 = Color(0xFFFFDFDF);

const uTextColor = Color(0xFF3C4046);
const uBackgroundColor = Color(0xFFF9F8FD);

// defult padding
const double uPadding = 20.0;

class NavbarIcons {
  final String image, image1, image2;
  final int id;
  NavbarIcons({
    required this.id,
    required this.image,
    required this.image1,
    required this.image2,
  });
}

List<NavbarIcons> icons = [
  NavbarIcons(
    id: 0,
    image: "assets/icons/home.png",
    image1: "assets/icons/barcode.png",
    image2: "assets/icons/basket.png",
  ),
  NavbarIcons(
    id: 1,
    image: "assets/icons/home_1.png",
    image1: "assets/icons/barcode_1.png",
    image2: "assets/icons/basket_1.png",
  ),
];
