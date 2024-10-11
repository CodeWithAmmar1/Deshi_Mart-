import 'package:flutter/material.dart';

class CartContainer extends StatelessWidget {
  final String title1;
  final String price1;
  final String quantity1;
  final AssetImage image1;
  const CartContainer(
      {super.key,
      required this.title1,
      required this.price1,
      required this.quantity1,
      required this.image1});

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
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.all(20),
                width: 90,
                height: 90,
                decoration: BoxDecoration(
                  image: DecorationImage(image: image1, fit: BoxFit.cover),
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
                  title1,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                child: Text(
                  "${quantity1}, Price",
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
            ],
          ),
          Container(
            width: 100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
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
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20, bottom: 10),
                  child: Text(
                    "\$${price1}",
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
