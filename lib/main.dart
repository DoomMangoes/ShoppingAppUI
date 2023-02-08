import 'package:flutter/material.dart';
import '../pages/Homepage.dart';
import 'pages/CartPage.dart';
import 'pages/ItemPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
        ),
        routes: {
          "/": (context) => HomePage(),
          "cartPage": (context) => CartPage(),
          "itemPage": (context) => ItemPage(),
        });
  }
}
