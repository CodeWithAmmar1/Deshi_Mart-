import 'package:deshimart/bestselling.dart';
import 'package:deshimart/cart_container.dart';
import 'package:deshimart/orderplace.dart';
import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.all(30),
              child: Text(
                "My Cart",
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
          Container(
            height: 630,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: itemsData.name.length,
              itemBuilder: (BuildContext context, int index) {
                return CartContainer(
                    title1: itemsData.name[index],
                    price1: "4.99",
                    quantity1: "1kg",
                    image1: AssetImage(itemsData.assetImage[index]));
              },
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.only(top: 30, bottom: 20),
              width: 364,
              height: 67,
              child: ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          width: double.infinity,
                          height: 525,
                          margin: EdgeInsets.only(top: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(left: 20),
                                    child: Text(
                                      "Checkout",
                                      style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(right: 20),
                                    child: Icon(
                                      Icons.cancel_outlined,
                                      size: 40,
                                      color: Color(0xffB3B3B3),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border(
                                    top: BorderSide(
                                        width: 1.0,
                                        color: Colors.grey.shade300),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              ListTile(
                                title: Text(
                                  "Delivery",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff7C7C7C)),
                                ),
                                trailing: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      "Select Method  ",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Icon(Icons.arrow_forward_ios),
                                  ],
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border(
                                    top: BorderSide(
                                        width: 1.0,
                                        color: Colors.grey.shade300),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              ListTile(
                                title: Text(
                                  "Pament",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff7C7C7C)),
                                ),
                                trailing: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Container(
                                      width: 21.61,
                                      height: 16,
                                      child: Image.asset(
                                          "assets/best selling/Group 6907.png"),
                                    ),
                                    SizedBox(width: 10),
                                    Icon(Icons.arrow_forward_ios),
                                  ],
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border(
                                    top: BorderSide(
                                        width: 1.0,
                                        color: Colors.grey.shade300),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              ListTile(
                                title: Text(
                                  "Promo Code",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff7C7C7C)),
                                ),
                                trailing: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      "Pick discount  ",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Icon(Icons.arrow_forward_ios),
                                  ],
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  border: Border(
                                    top: BorderSide(
                                        width: 1.0,
                                        color: Colors.grey.shade300),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              ListTile(
                                title: Text(
                                  "Total Cost",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xff7C7C7C)),
                                ),
                                trailing: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      "\$13.97  ",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Icon(Icons.arrow_forward_ios),
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 20),
                                child: RichText(
                                  text: TextSpan(
                                    text:
                                        'By placing an order you agree to our\n',
                                    style: TextStyle(
                                        fontSize: 14, color: Color(0xff7C7C7C)),
                                    children: <TextSpan>[
                                      TextSpan(
                                        text: 'Terms',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                        ),
                                      ),
                                      TextSpan(
                                        text: ' And ',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xff7C7C7C),
                                        ),
                                      ),
                                      TextSpan(
                                        text: 'Conditions',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Center(
                                child: Container(
                                  margin: EdgeInsets.only(top: 30, bottom: 20),
                                  width: 364,
                                  height: 67,
                                  child: ElevatedButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  Orderplace()));
                                    },
                                    child: Text(
                                      "Place Order",
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Color(0xff53B175),
                                        foregroundColor: Colors.white,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20))),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                      enableDrag: true,
                      isScrollControlled: false,
                      isDismissible: true,
                      backgroundColor: Color(0xffFFFFFF),
                      barrierColor: Colors.black.withOpacity(0.1));
                },
                child: Text(
                  "Go to Checkout",
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