import 'package:flutter/material.dart';

class FreshFoodCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10.0),
      elevation: 0.0,
      color: Colors.orange,
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 20.0,
          horizontal: 30.0,
        ),
        child: Column(
          children: [
            Placeholder(
              fallbackWidth: 100,
              fallbackHeight: 100,
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "Berries",
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
