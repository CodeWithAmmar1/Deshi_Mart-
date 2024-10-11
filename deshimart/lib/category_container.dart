import 'package:flutter/material.dart';

class CategoryContainer extends StatelessWidget {
  final String title;
  final AssetImage image;
  final Color colors;
  const CategoryContainer(
      {super.key,
      required this.title,
      required this.image,
      required this.colors});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      height: 105,
      width: 248,
      decoration:
          BoxDecoration(color: colors, borderRadius: BorderRadius.circular(20)),
      child: Row(
        children: [
          Container(
            width: 71,
            height: 71,
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(image: DecorationImage(image: image)),
          ),
          Text(
            title,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}

class ColorsLoop {
  static List<Color> colors = [
    Color(0xffF8A44C).withOpacity(0.3),
    Color(0xff53B175).withOpacity(0.3),
  ];
}
