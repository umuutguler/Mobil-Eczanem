import 'package:flutter/material.dart';

class Product {
  final String image, title, title2, price, county;
  final int id;
  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.county,
    required this.price,
    required this.title2,
  });
}

List<Product> products = [
  Product(
    id: 1,
    image: "assets/images/image_1.jpg",
    title: "ACE PLUS",
    title2: "Selesyum",
    county: "30 Tablet",
    price: "139.85TL",
  ),
  Product(
    id: 2,
    image: "assets/images/image_2.jpg",
    title: "ACNEMIX",
    title2: "Jel",
    county: "46.6 gr",
    price: "113.18TL",
  ),
  Product(
    id: 3,
    image: "assets/images/image_3.jpg",
    title: "ALOPEXY T", // ALOPEXY T %5 Deri Spreyi
    title2: "Deri Spreyi",
    county: "60 ml",
    price: "300.48TL",
  ),
  Product(
    id: 4,
    image: "assets/images/image_4.jpg",
    title: "TYLOL",
    title2: "HOT",
    county: "12 Poşet",
    price: "86.85TL",
  ),
  Product(
    id: 5,
    image: "assets/images/image_5.jpg",
    title: "Vicks",
    title2: "Vaporub",
    county: "38 gr",
    price: "69TL",
  ),
];
