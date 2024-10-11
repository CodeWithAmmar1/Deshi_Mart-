import 'package:deshimart/bottom_navigation.dart';
import 'package:deshimart/cart.dart';
import 'package:deshimart/homescreen.dart';
import 'package:deshimart/login.dart';
import 'package:deshimart/orderplace.dart';
import 'package:deshimart/productview.dart';
import 'package:deshimart/profile.dart';
import 'package:deshimart/signup.dart';
import 'package:deshimart/splash.dart';
import 'package:deshimart/welcome.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash(),
    );
  }
}
