import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 364,
              width: 413,
              child: Image.asset(
                "assets/login/Mask Group.png",
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 30),
              child: Text(
                "Sign Up",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 30, top: 10),
              child: Text(
                "Enter your credentials to continue",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 30, top: 20),
              child: Text(
                "Username",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 30, right: 30, bottom: 10),
              child: TextField(
                decoration: InputDecoration(hintText: "Enter Username"),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 30, top: 10),
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
                    hintText: "Enter Email",
                    suffixIcon: Icon(Icons.remove_red_eye_outlined)),
              ),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 30, bottom: 5),
                  child: Text(
                    "By continuing you agree to our  ",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 5),
                  child: Text(
                    " Terms of Service ",
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff53B175),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 30),
                  child: Text(
                    "and ",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    "Privacy Policy.",
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff53B175),
                    ),
                  ),
                ),
              ],
            ),
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 20, bottom: 20),
                width: 364,
                height: 67,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Sign In",
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
                  "Already have an account?",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
                SizedBox(
                  width: 10,
                ),
                Text("Signup",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xff53B175),
                        fontSize: 14))
              ],
            )
          ],
        ),
      ),
    );
  }
}
