import 'package:deshimart/bestselling.dart';
import 'package:flutter/material.dart';

class CartContainer extends StatefulWidget {
  final String title1;
  final num price1;
  final String quantity1;
  final NetworkImage image1;
  final int quantityCount;
  final void Function() onTapCancel;
  final void Function() onAdd;
  final void Function() onSub;
  const CartContainer(
      {super.key,
      required this.title1,
      required this.price1,
      required this.quantity1,
      required this.image1,
      required this.onTapCancel,
      required this.quantityCount,
      required this.onAdd,
      required this.onSub});

  @override
  State<CartContainer> createState() => _CartContainerState();
}

class _CartContainerState extends State<CartContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 180,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 1.0, color: Colors.grey.shade300),
        ),
      ),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.all(20),
                width: 90,
                height: 90,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: widget.image1, fit: BoxFit.contain),
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
              Container(
                margin: EdgeInsets.only(right: 20, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: widget.onSub,
                      child: Container(
                        margin: EdgeInsets.all(20),
                        height: 17,
                        width: 17,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  "assets/best selling/Vector (1).png")),
                        ),
                      ),
                    ),
                    Container(
                      height: 45.67,
                      width: 45.67,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: Color(0xffE2E2E2),
                          )),
                      child: Center(
                        child: Text(
                          "${widget.quantityCount}",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: widget.onAdd,
                      child: Container(
                        margin: EdgeInsets.all(20),
                        height: 17,
                        width: 17,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  "assets/best selling/Vector (2).png")),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: widget.onTapCancel,
                child: Container(
                  child: Icon(
                    Icons.cancel_outlined,
                    size: 40,
                    color: Color(0xffB3B3B3),
                  ),
                ),
              ),
              Container(
                child: Text(
                  "\$${widget.price1}",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
