import 'package:flutter/material.dart';
import 'package:flutter_fresh_food/model/model_food_categories.dart';

class FreshFoodCard extends StatelessWidget {
  final FreshFoodCategory foodItem;
  const FreshFoodCard({Key key, this.foodItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 20.0,
        horizontal: 30.0,
      ),
      margin: EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 10.0,
      ),
      decoration: BoxDecoration(
        color: Colors.orange,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(10),
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
            foodItem.categoryName,
            style: TextStyle(
              fontSize: 18.0,
            ),
          ),
        ],
      ),
    );
  }
}
