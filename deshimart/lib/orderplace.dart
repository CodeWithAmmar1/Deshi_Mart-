import 'package:deshimart/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Orderplace extends StatelessWidget {
  const Orderplace({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.only(top: 20),
              child: Lottie.asset("assets/animation/animation.json",
                  fit: BoxFit.contain, repeat: false, reverse: false),
            ),
          ),
          Container(
            child: Text(
              "Your Order has been\n          accepted",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Text(
              "Your items has been placcd and is on \n           it’s way to being processed",
              style: TextStyle(fontSize: 16, color: Color(0xff7C7C7C)),
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.only(top: 180, bottom: 20),
              width: 364,
              height: 67,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Homescreen()));
                },
                child: Text(
                  "Back to home",
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
