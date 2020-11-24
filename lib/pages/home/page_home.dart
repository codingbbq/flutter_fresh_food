import 'package:flutter/material.dart';
import 'package:flutter_fresh_food/utils/custom_box_decoration.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      bottomSheet: Column(
        children: [
          Container(
            height: height * 0.60,
            decoration: customBoxDecoration,
            child: Column(
              children: [
                // Title and Search Icon button
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Store"),
                    IconButton(
                      icon: Icon(Icons.search),
                      onPressed: () {},
                    ),
                  ],
                ),

                // Product Details
                Container(
                  height: 200,
                  width: 200,
                  child: Placeholder(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
