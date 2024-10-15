import 'package:flutter/material.dart';

class itemsData {
  static List assetImage = [
    "assets/best selling/b1.png",
    "assets/best selling/b2.png",
    "assets/best selling/b3.png",
    "assets/best selling/b4.png",
    "assets/best selling/b5.png",
    "assets/best selling/b6.png",
    "assets/best selling/b1.png",
    "assets/best selling/b2.png",
    "assets/best selling/b3.png",
    "assets/best selling/b4.png",
    "assets/best selling/b5.png",
    "assets/best selling/b6.png",
  ];
  static List name = [
    "Cooking Oil& Ghee",
    "Egg Noodles",
    "Bell Pepper Red",
    "Ginger",
    "Apple juice",
    "Mayonnais Eggless",
    "Cooking Oil& Ghee",
    "Egg Noodles",
    "Bell Pepper Red",
    "Ginger",
    "Apple juice",
    "Mayonnais Eggless",
  ];
}

class CartModel {
  final String title;
  final NetworkImage image;
  final num price;
  final String weight;
  int count;

  CartModel(
      {required this.image,
      required this.price,
      required this.title,
      required this.weight,
      required this.count});
}

List<CartModel> cartData = [];
List<CartModel> fvrtData = [];
