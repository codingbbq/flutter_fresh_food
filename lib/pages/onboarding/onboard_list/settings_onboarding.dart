// Settings page of Onboarding
import 'package:flutter/material.dart';

class OnBoardingSettings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    bool _all = false;
    bool _vegan = false;
    bool _vegeterian = false;
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            padding: EdgeInsets.only(
              bottom: 20.0,
            ),
            height: height * 0.86,
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
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Settings Header
                  Text(
                    "Recipe Preferences",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24.0,
                      color: Colors.grey,
                    ),
                  ),

                  SizedBox(
                    height: 20.0,
                  ),

                  SwitchListTile(
                    title: Text("All"),
                    value: _all,
                    onChanged: (value) {
                      print(value);
                    },
                  ),

                  // Text Description
                  Text(
                    "Tailor your Recipes feed exactly how you like it",
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
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 30.0,
            ),
            width: double.infinity,
            child: RaisedButton.icon(
              padding: EdgeInsets.symmetric(
                vertical: 15.0,
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/onboarding');
              },
              shape: StadiumBorder(),
              color: Colors.green,
              label: Text(
                "Get Started",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              icon: Icon(
                Icons.arrow_forward,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
