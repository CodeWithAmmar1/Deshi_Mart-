import 'package:deshimart/cart.dart';
import 'package:flutter/material.dart';

class Productview extends StatelessWidget {
  const Productview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                    Container(
                      margin: EdgeInsets.only(left: 20, top: 40),
                      width: 10,
                      height: 18,
                      child: IconButton(
                        icon: Icon(Icons.arrow_back_ios),
                        onPressed: () {
                          Navigator.pop(context);
                        },
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
                  child: Image.asset(
                    "assets/login/Vector.png",
                    fit: BoxFit.cover,
                  ),
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
                  "Naturel Red Apple",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 20, top: 20),
                child: Icon(
                  Icons.favorite_border,
                  size: 25,
                  color: Colors.grey,
                ),
              )
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: 20),
            child: Text(
              "1kg, Price",
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
                    Container(
                      margin: EdgeInsets.all(20),
                      height: 17,
                      width: 17,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/best selling/Vector (1).png")),
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
                          "1",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(20),
                      height: 17,
                      width: 17,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/best selling/Vector (2).png")),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 20, top: 20),
                child: Text(
                  "\$4.99",
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
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => Cart()));
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
    );
  }
}
