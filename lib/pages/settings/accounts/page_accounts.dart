import 'package:flutter/material.dart';
import 'package:flutter_fresh_food/pages/settings/accounts/accounts_utils/accounts_preferences.dart';
import 'package:flutter_fresh_food/pages/settings/accounts/accounts_utils/accounts_your_info.dart';
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
                children: [
                  AccountsYourInfo(),
                  SizedBox(
                    height: 20.0,
                  ),
                  AccountsPreferences(),
                ],
              ))
        ],
      ),
    );
  }
}
