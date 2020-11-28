// First page of Onboarding
import 'package:flutter/material.dart';
import 'package:flutter_fresh_food/utils/custom_box_decoration.dart';

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
            decoration: customBoxDecoration,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Image
                  Container(
                    width: 200,
                    height: 200,
                    child: Placeholder(),
                  ),

                  SizedBox(
                    height: 20.0,
                  ),

                  // Text Description
                  Text(
                    "Quickly search and add add healthy foods to your cart",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24.0,
                      color: Colors.grey,
                    ),
                  ),

                  // Dotted navigation
                ],
              ),
            ),
          ),

          // Skip Button
          // ToDo: Convert this into common function
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: FlatButton(
              padding: EdgeInsets.all(20.0),
              onPressed: () {
                Navigator.pushNamed(context, '/home');
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
