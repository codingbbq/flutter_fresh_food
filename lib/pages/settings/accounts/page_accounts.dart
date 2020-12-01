import 'package:flutter/material.dart';
import 'package:flutter_fresh_food/utils/custom_box_decoration.dart';

class Accounts extends StatelessWidget {
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                Text(
                  "Your account",
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
          ),

          // Body
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 20.0,
              horizontal: 20.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Your information",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 24.0,
                  ),
                ),
                SizedBox(height: 15.0),
                Container(
                  padding: EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Full Name",
                                style: TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.grey[700],
                                ),
                              ),
                              Text(
                                "Orlando smith",
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.grey[500],
                                ),
                              ),
                            ],
                          ),
                          IconButton(
                            icon: Icon(Icons.edit),
                            onPressed: () {},
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
