import 'package:flutter/material.dart';
import 'package:flutter_fresh_food/utils/bottom_nav.dart';
import 'package:flutter_fresh_food/utils/custom_box_decoration.dart';

class Cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomSheet: CustomBottomNavigation(),
      body: Column(
        children: [
          // Header
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: customBoxDecoration,
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Container(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    "Cart",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 24.0,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
              ],
            ),
          ),

          SizedBox(
            height: 15.0,
          ),

          Column(
            children: [
              ListView(),
            ],
          )
        ],
      ),
    );
  }
}
