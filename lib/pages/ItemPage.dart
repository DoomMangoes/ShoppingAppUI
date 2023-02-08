import 'package:flutter/material.dart';
import '../widgets/ItemAppBar.dart';

class ItemPage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEDECF2),
      body: ListView(
        children: [
          ItemAppBar(),
        ],
      ),
    );
  }
}
