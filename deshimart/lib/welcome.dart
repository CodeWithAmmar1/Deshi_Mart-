import 'package:deshimart/login.dart';
import 'package:flutter/material.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 1), () {
      showModalBottomSheet(
          context: context,
          builder: (BuildContext context) {
            return _buildBottomSheet();
          },
          enableDrag: false,
          isScrollControlled: false,
          isDismissible: false,
          backgroundColor: Colors.transparent,
          barrierColor: Colors.black.withOpacity(0.1));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 150, left: 30),
            height: 70,
            width: 65,
            child: Image.asset("assets/login/Group 33.png"),
          ),
          Container(
            margin: EdgeInsets.only(left: 30),
            height: 59,
            width: 181,
            child: Image.asset("assets/login/Group 34.png"),
          ),
          Container(
            margin: EdgeInsets.only(left: 30, top: 20),
            height: 250,
            width: 345,
            child: Image.asset("assets/login/Group 35.png"),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomSheet() {
    return Container(
      width: double.infinity,
      height: 325,
      margin: EdgeInsets.only(top: 40),
      decoration: BoxDecoration(
        color: Color(0xff00CA44),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      child: Column(
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.only(top: 20),
              child: Text(
                "Welcome to our Store",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 32),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: Text(
              "Get your grocery in as fast as\n             one hour",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Login()));
            },
            child: Container(
              margin: EdgeInsets.only(top: 100),
              width: 352,
              height: 52,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Center(
                child: Text(
                  "Let's Explore",
                  style: TextStyle(
                      color: Color(0xff00CA44),
                      fontWeight: FontWeight.bold,
                      fontSize: 32),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
