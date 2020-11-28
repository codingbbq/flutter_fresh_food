import 'package:flutter/material.dart';
import 'package:flutter_fresh_food/model/model_settings_nav.dart';
import 'package:flutter_fresh_food/pages/settings/setting_utils/settings_nav.dart';
import 'package:flutter_fresh_food/utils/bottom_nav.dart';
import 'package:flutter_fresh_food/utils/custom_box_decoration.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomSheet: CustomBottomNavigation(),
      body: Column(
        children: [
          Container(
            height: 100,
            width: MediaQuery.of(context).size.width,
            decoration: customBoxDecoration,
            child: Align(
              alignment: Alignment.center,
              child: Text(
                "Settings",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 24.0,
                ),
              ),
            ),
          ),

          SizedBox(
            height: 10.0,
          ),
          // List of items
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 20.0,
              ),
              child: Column(
                children: getSettingItems(),
                // children: [
                //   SettingsNav(),
                //   SettingsNav(),
                //   SettingsNav(),
                //   SettingsNav(),
                //   Spacer(),
                //   SettingsNav(),
                //   SizedBox(
                //     height: 80.0,
                //   ),
                // ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

getSettingItems() {
  List<Widget> newSettingsList = [];
  for (var i = 0; i < settingsList.length; i++) {
    if (i == settingsList.length - 1) {
      newSettingsList.add(Spacer());
    }
    newSettingsList.add(SettingsNav());
  }

  // To add some spacing so that the list item does not hide behind bottomshit
  newSettingsList.add(
    SizedBox(
      height: 80.0,
    ),
  );

  return newSettingsList;
}
