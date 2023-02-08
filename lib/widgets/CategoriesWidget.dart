import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (int i = 1; i < 8; i++)
            Container(
              margin: EdgeInsets.symmetric(horizontal: 8),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //use i to cycle through images
                  Image.asset(
                    "images/$i.png",
                    width: 40,
                    height: 40,
                  ),
                  Text("Sandal",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        //FontSize changed from 16 to 14
                        fontSize: 14,
                        color: Color(0xFF4C53A5),
                      ))
                ],
              ),
            ),
        ],
      ),
    );
  }
}
