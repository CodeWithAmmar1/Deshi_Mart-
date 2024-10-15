import 'package:deshimart/bestselling.dart';
import 'package:deshimart/fav_container.dart';
import 'package:flutter/material.dart';

class Favorite extends StatefulWidget {
  const Favorite({super.key});

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.all(30),
                child: Text(
                  "Favorite",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(width: 1.0, color: Colors.grey.shade300),
                ),
              ),
            ),
            SizedBox(
              height: 730,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: fvrtData.length,
                itemBuilder: (BuildContext context, int index) {
                  final item = fvrtData[index];

                  return FavContainer(
                      onTapCancel: () {
                        fvrtData.removeAt(index);

                        setState(() {});
                      },
                      title1: item.title,
                      price1: item.price,
                      quantity1: item.weight,
                      image1: item.image);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
