import 'package:flutter/material.dart';

class AccountsPreferences extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Your preferences",
          style: TextStyle(
            color: Colors.grey,
            fontSize: 24.0,
          ),
        ),
        SizedBox(height: 15.0),
        Container(
          padding: EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Column(
            children: [
              // Notification
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Notifications",
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.grey[700],
                    ),
                  ),
                  Switch(
                    value: true,
                    onChanged: (value) {
                      print(value);
                    },
                    activeColor: Colors.green,
                    activeTrackColor: Colors.white,
                  )
                ],
              ),

              SizedBox(height: 10.0),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Newsletter",
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.grey[700],
                    ),
                  ),
                  Switch(
                    value: false,
                    onChanged: (value) {
                      print(value);
                    },
                    activeColor: Colors.green,
                    activeTrackColor: Colors.white,
                  )
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
