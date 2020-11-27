import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.orange,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {},
          ),
          FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.add),
          ),
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
