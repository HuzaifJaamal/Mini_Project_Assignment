import 'package:flutter/material.dart';
import 'package:shopping_app_smit/pages/CartPage.dart';
import 'package:shopping_app_smit/pages/Homepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      routes: {
        "/": (context) => HomePage(),
        "cartPage": (context) => CartPage()
      },
    );
  }
}
