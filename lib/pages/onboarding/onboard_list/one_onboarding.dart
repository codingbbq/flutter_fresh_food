// First page of Onboarding
import 'package:flutter/material.dart';

class OnBoardingOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(
              bottom: 20.0,
            ),
            height: height * 0.88,
            width: width,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  blurRadius: 20,
                  offset: Offset(0, 15),
                  color: Colors.grey.withOpacity(.6),
                  spreadRadius: -15,
                ),
              ],
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30.0),
                bottomRight: Radius.circular(30.0),
              ),
            ),
            child: Column(
              children: [
                // Image
                Container(
                  width: 200,
                  height: 200,
                  child: Placeholder(),
                ),

                // Text Description
                Text("Quickly search and add add healthy foods to your cart"),

                // Dotted navigation
              ],
            ),
          ),

          // Skip Button
          // ToDo: Convert this into common function
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: FlatButton(
              padding: EdgeInsets.all(20.0),
              onPressed: () {
                Navigator.pushNamed(context, '/create_account');
              },
              child: Text(
                "SKIP",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
