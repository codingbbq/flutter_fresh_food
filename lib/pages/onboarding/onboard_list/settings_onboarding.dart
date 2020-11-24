// Settings page of Onboarding
import 'package:flutter/material.dart';
import 'package:flutter_fresh_food/model/model_onboarding_settings.dart';
import 'package:flutter_fresh_food/utils/custom_box_decoration.dart';

class OnBoardingSettings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

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
            decoration: customBoxDecoration,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 20.0,
                  ),
                  // Settings Header
                  Text(
                    "Recipe Preferences",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24.0,
                      color: Colors.grey,
                    ),
                  ),

                  Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: onboardingSettingsList.length,
                      itemBuilder: (context, index) => SwitchListTile(
                        title: Text(onboardingSettingsList[index].property),
                        value: onboardingSettingsList[index].value,
                        onChanged: (value) {},
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
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
                Navigator.pushNamed(context, '/home');
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
