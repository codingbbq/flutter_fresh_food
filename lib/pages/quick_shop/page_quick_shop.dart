import 'package:flutter/material.dart';
import 'package:flutter_fresh_food/pages/quick_shop/quick_shop_utils/filter_nav.dart';
import 'package:flutter_fresh_food/utils/bottom_nav.dart';
import 'package:flutter_fresh_food/utils/custom_box_decoration.dart';

class QuickShop extends StatelessWidget {
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
                      "Quick Shop",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 24.0,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Icon(
                        Icons.check,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),

                // Filter
                FilterNav(),

                SizedBox(
                  height: 10.0,
                ),
              ],
            ),
          ),

          SizedBox(
            height: 15.0,
          ),
          //Body
          Container(
            height: MediaQuery.of(context).size.height - (130 + 100),
            width: MediaQuery.of(context).size.width,
            decoration: customBoxDecoration,
            child: Text("Grid will appear here"),
          ),
        ],
      ),
    );
  }
}
