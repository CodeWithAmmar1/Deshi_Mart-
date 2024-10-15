import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController text = TextEditingController();
  TextEditingController pass = TextEditingController();
  bool isloading = false;
  bool hide = false;
  loginFun(context) async {
    setState(() {
      isloading = true;
    });
    try {
      UserCredential credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: text.text,
        password: pass.text,
      );
      var snackBar = SnackBar(
        content: Text('The account is created ${credential.user!.email}'),
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
      Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
        var snackBar = SnackBar(
          content: Text('The password provided is too weak.'),
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
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
        var snackBar = SnackBar(
          content: Text('The account already exists for this email.'),
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
                    suffix: IconButton(
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
                child: isloading
                    ? const CircularProgressIndicator(
                        color: Color(0xff53B175),
                      )
                    : ElevatedButton(
                        onPressed: () {
                          loginFun(context);
                        },
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
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Text("Log in",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff53B175),
                          fontSize: 14)),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
