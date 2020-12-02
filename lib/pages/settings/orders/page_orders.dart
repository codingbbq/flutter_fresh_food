import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_fresh_food/utils/custom_box_decoration.dart';

class Orders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          // Header
          Container(
            height: 100,
            width: MediaQuery.of(context).size.width,
            decoration: customBoxDecoration,
            child: Row(
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                Spacer(),
                Text(
                  "Your Orders",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 24.0,
                  ),
                ),
                Spacer(
                  flex: 2,
                ),

                // To center align text with a back button
                // https://stackoverflow.com/a/58824505
              ],
            ),
          ),

          // Body
          Expanded(
            child: Container(
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                      vertical: 10.0,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: ExpansionTile(
                      tilePadding: EdgeInsets.symmetric(
                        horizontal: 20.0,
                        vertical: 10.0,
                      ),
                      childrenPadding: EdgeInsets.all(20.0),
                      expandedCrossAxisAlignment: CrossAxisAlignment.start,
                      backgroundColor: Colors.grey[200],
                      title: Text(
                        "Order #123",
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.grey,
                        ),
                      ),
                      children: [Text("AAA")],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
