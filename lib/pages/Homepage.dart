import 'package:flutter/material.dart';
import '../widgets/HomeAppBar.dart';
import '../widgets/CategoriesWidget.dart';
import '../widgets/ItemsWidget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        HomeAppBar(),
        Container(
            //temp height
            //height: 500,
            padding: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
                color: Color(0xFFEDECF2),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                )),
            child: Column(
              children: [
                //Search Widget
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 5),
                          height: 50,
                          //Changed witdth from 300 to 200
                          width: 200,
                          child: TextFormField(
                              decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Search here...",
                          )),
                        ),
                        Spacer(),
                        Icon(
                          Icons.camera_alt,
                          size: 27,
                          color: Color(0xFF4C53A5),
                        )
                      ],
                    )),

                //Categories
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 10,
                  ),
                  child: Text("Categories",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF4C53A5),
                      )),
                ),

                // Categories Widget

                CategoriesWidget(),

                //Items

                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child: Text(
                    "Best Selling",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Color(0xFF4C53A5),
                    ),
                  ),
                ),

                //Items Widget
                ItemsWidget(),
              ],
            )),
      ],
    ));
  }
}
