import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.transparent,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            icon: Icon(
              Icons.home,
              size: 30.0,
              color: Colors.grey,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.home,
              size: 30.0,
              color: Colors.grey,
            ),
            onPressed: () {},
          ),
          FloatingActionButton(
            backgroundColor: Colors.grey,
            onPressed: () {},
            child: Icon(
              Icons.add,
              size: 30.0,
            ),
          ),
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              size: 30.0,
              color: Colors.grey,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.settings,
              size: 30.0,
              color: Colors.grey,
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/settings');
            },
          ),
        ],
      ),
    );
  }
}
