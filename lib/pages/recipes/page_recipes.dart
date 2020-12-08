import 'package:flutter/material.dart';
import 'package:flutter_fresh_food/utils/bottom_nav.dart';
import 'package:flutter_fresh_food/utils/custom_box_decoration.dart';

class Recipes extends StatelessWidget {
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    Text(
                      "Recipes",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 24.0,
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.search),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
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
        ],
      ),
    );
  }
}
