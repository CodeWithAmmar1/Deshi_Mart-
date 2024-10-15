import 'package:deshimart/bestselling.dart';
import 'package:flutter/material.dart';

class FavContainer extends StatefulWidget {
  final String title1;
  final num price1;
  final String quantity1;
  final NetworkImage image1;

  final void Function() onTapCancel;

  const FavContainer({
    super.key,
    required this.title1,
    required this.price1,
    required this.quantity1,
    required this.image1,
    required this.onTapCancel,
  });

  @override
  State<FavContainer> createState() => _CartContainerState();
}

class _CartContainerState extends State<FavContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 403,
      height: 180,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 1.0, color: Colors.grey.shade300),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.all(20),
                width: 90,
                height: 90,
                decoration: BoxDecoration(
                  image:
                      DecorationImage(image: widget.image1, fit: BoxFit.cover),
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                child: Text(
                  widget.title1,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                child: Text(
                  "${widget.quantity1}, Price",
                  style: TextStyle(fontSize: 14, color: Color(0xff7C7C7C)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
          Container(
            width: 100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: widget.onTapCancel,
                  child: Container(
                    margin: EdgeInsets.only(
                      left: 20,
                      right: 20,
                    ),
                    child: Icon(
                      Icons.cancel_outlined,
                      size: 40,
                      color: Color(0xffB3B3B3),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20, bottom: 10),
                  child: Text(
                    "\$${widget.price1}",
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
