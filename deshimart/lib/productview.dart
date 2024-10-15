import 'package:deshimart/bestselling.dart';
import 'package:deshimart/bottom_navigation.dart';
import 'package:deshimart/cart.dart';
import 'package:flutter/material.dart';

class Productview extends StatefulWidget {
  final num price;
  final int quantity;
  final String weight;
  final String title;
  final NetworkImage image;
  const Productview(
      {super.key,
      required this.price,
      required this.quantity,
      required this.weight,
      required this.title,
      required this.image});

  @override
  State<Productview> createState() => _ProductviewState();
}

class _ProductviewState extends State<Productview> {
  bool isFavorite = false;
  int count = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 371,
              width: 413,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40)),
                color: Color(0xffF2F3F2),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          margin: const EdgeInsets.only(left: 20, top: 40),
                          child: const Icon(Icons.arrow_back_ios),
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(right: 40, top: 49),
                          width: 10,
                          height: 18,
                          child: Icon(Icons.logout))
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30, left: 20),
                    width: 329,
                    height: 200,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: widget.image, fit: BoxFit.contain)),
                  ),
                  Container(
                    margin: EdgeInsets.all(20),
                    child: Icon(
                      Icons.more_horiz,
                      size: 30,
                    ),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20, top: 20),
                  child: Text(
                    widget.title,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isFavorite = !isFavorite;

                      if (isFavorite) {
                        fvrtData.add(CartModel(
                          image: widget.image,
                          title: widget.title,
                          count: 1,
                          price: widget.price,
                          weight: widget.weight,
                        ));
                      }
                    });
                    Future.delayed(const Duration(microseconds: 1), () {
                      Navigator.pushReplacement(
                        // ignore: use_build_context_synchronously
                        context,
                        MaterialPageRoute(
                          builder: (context) => BottomNavigation(
                            initialIndex: 2,
                          ),
                        ),
                      );
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.only(right: 20, top: 20),
                    child: Icon(
                      isFavorite ? Icons.favorite : Icons.favorite_border,
                      size: 25,
                      color: isFavorite ? Colors.red : Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Text(
                "${widget.quantity}${widget.weight}, Price",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            if (count > 1) {
                              count--;
                            }
                          });
                        },
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
                            "$count",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            count++;
                          });
                        },
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
                Container(
                  margin: EdgeInsets.only(right: 20, top: 20),
                  child: Text(
                    "\$${widget.price}",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Center(
                child: Container(
              margin: EdgeInsets.only(top: 20),
              width: 373.99,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(width: 1.0, color: Colors.grey.shade300),
                ),
              ),
            )),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Text(
                    "Product Detail",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(right: 20),
                    child: Icon(
                      Icons.keyboard_arrow_down_outlined,
                    )),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 10, left: 20),
              child: Text(
                "Apples are nutritious. Apples may be good for weight loss. Apples may be good for your heart. As part of a healtful \nAnd varied diet.",
                style: TextStyle(fontSize: 13, color: Color(0xff7C7C7C)),
              ),
            ),
            Center(
                child: Container(
              margin: EdgeInsets.only(top: 20),
              width: 373.99,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(width: 1.0, color: Colors.grey.shade300),
                ),
              ),
            )),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Text(
                    "Nutritions",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      width: 33.61,
                      height: 18,
                      decoration: BoxDecoration(
                          color: Color(0xffEBEBEB),
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: Text(
                          "100gr",
                          style: TextStyle(fontSize: 9),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                        margin: EdgeInsets.only(right: 20),
                        child: Icon(
                          Icons.arrow_forward_ios_sharp,
                          size: 20,
                        )),
                  ],
                )
              ],
            ),
            Center(
                child: Container(
              margin: EdgeInsets.only(top: 20),
              width: 373.99,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(width: 1.0, color: Colors.grey.shade300),
                ),
              ),
            )),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Text(
                    "Review",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                  children: [
                    Container(
                      child: Image.asset("assets/login/Group 6834.png"),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                        margin: EdgeInsets.only(right: 20),
                        child: Icon(
                          Icons.arrow_forward_ios_sharp,
                          size: 20,
                        )),
                  ],
                )
              ],
            ),
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 30, bottom: 20),
                width: 364,
                height: 67,
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      cartData.add(CartModel(
                          image: widget.image,
                          title: widget.title,
                          count: count,
                          price: widget.price,
                          weight: widget.weight));
                    });

                    // debugPrint(cartData.toString());
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BottomNavigation(
                                  initialIndex: 1,
                                )));
                  },
                  child: Text(
                    "Add To Basket",
                    style: TextStyle(fontSize: 18),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xff53B175),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
