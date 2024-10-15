import 'package:deshimart/bottom_navigation.dart';
import 'package:deshimart/homescreen.dart';
import 'package:deshimart/signup.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController text = TextEditingController();
  TextEditingController pass = TextEditingController();
  bool isloading = false;
  bool isExpanded = false;
  bool isExpand = false;
  bool hide = false;

  loginFun(context) async {
    setState(() {
      isloading = true;
    });
    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: text.text, password: pass.text);

      var snackBar = SnackBar(
        content: Text('The account is login ${credential.user!.email}'),
        backgroundColor: Color(0xff53B175),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 6.0,
        duration: Duration(seconds: 1),
      );

      setState(() {
        isloading = false;
        text.clear();
        pass.clear();
      });
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      Future.delayed(snackBar.duration, () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => BottomNavigation()),
        );
      });
      ;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
        var snackBar = SnackBar(
          content: Text('No user found for that email.'),
          backgroundColor: Color(0xff53B175),
          behavior: SnackBarBehavior.floating,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          elevation: 6.0,
          duration: Duration(seconds: 2),
        );
        setState(() {
          isloading = false;
        });
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
        var snackBar = SnackBar(
          content: Text('User not exist.'),
          backgroundColor: Color(0xff53B175),
          behavior: SnackBarBehavior.floating,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          elevation: 6.0,
          duration: Duration(seconds: 2),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
        setState(() {
          isloading = false;
        });
      } else if (e.code == 'invalid-credential') {
        print('Wrong password provided for that user.');
        var snackBar = SnackBar(
          content: Text('User not exist.'),
          backgroundColor: Color(0xff53B175),
          behavior: SnackBarBehavior.floating,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          elevation: 6.0,
          duration: Duration(seconds: 2),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
        setState(() {
          isloading = false;
        });
      } else {
        var snackBar = SnackBar(
          content: Text('${e.code}'),
          backgroundColor: Color(0xff53B175),
          behavior: SnackBarBehavior.floating,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          elevation: 6.0,
          duration: Duration(seconds: 2),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
        setState(() {
          isloading = false;
        });
      }
    } catch (e) {
      print(e);
      var snackBar = SnackBar(
        content: Text('error : ${e}'),
        backgroundColor: Color(0xff53B175),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 6.0,
        duration: Duration(seconds: 2),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
      setState(() {
        isloading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                controller: text,
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
                  controller: pass,
                  obscureText: hide,
                  decoration: InputDecoration(
                    hintText: "Enter Password",
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            hide = !hide;
                          });
                        },
                        icon: Icon(
                          Icons.remove_red_eye_outlined,
                          color: Colors.white,
                        )),
                  )),
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
                child: isloading
                    ? CircularProgressIndicator(
                        color: Color(0xff53B175),
                      )
                    : ElevatedButton(
                        onPressed: () {
                          loginFun(context);
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
      ),
    );
  }
}
