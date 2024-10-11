import 'package:deshimart/homescreen.dart';
import 'package:deshimart/signup.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 374,
            width: 413,
            child: Image.asset("assets/login/Mask Group.png"),
          ),
          Container(
            margin: EdgeInsets.only(left: 30, top: 10),
            child: Text(
              "Loging",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 30, top: 10),
            child: Text(
              "Enter your emails and password",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 30, top: 40),
            child: Text(
              "Email",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 30, right: 30, bottom: 10),
            child: TextField(
              decoration: InputDecoration(hintText: "Enter Email"),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 30, top: 10),
            child: Text(
              "Password ",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 30, right: 30, bottom: 10),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Enter Password",
                  suffixIcon: Icon(Icons.remove_red_eye_outlined)),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              left: 250,
            ),
            child: Text(
              "Forgot Password? ",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
          ),
          Center(
            child: Container(
              margin: EdgeInsets.only(top: 30, bottom: 20),
              width: 364,
              height: 67,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Homescreen()));
                },
                child: Text(
                  "Log In",
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Don’t have an account? Singup",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              ),
              SizedBox(
                width: 10,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Signup()));
                },
                child: Container(
                  child: Text("Signup",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff53B175),
                          fontSize: 14)),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
