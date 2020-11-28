import 'package:flutter/material.dart';
import 'package:flutter_fresh_food/model/model_food_categories.dart';
import 'package:flutter_fresh_food/pages/home/home_utils/fresh_food_card.dart';
import 'package:flutter_fresh_food/utils/bottom_nav.dart';
import 'package:flutter_fresh_food/utils/custom_box_decoration.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    // Get the first item from the food category
    FreshFoodCategory firstCategory = freshFoodCatList[0];
    // To display the food card as scrollable row items;
    List<FreshFoodCategory> foodCategory =
        freshFoodCatList.cast<FreshFoodCategory>();

    return Scaffold(
      extendBody: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        elevation: 0.0,
        leading: SizedBox(),
        title: Center(
          child: Text(
            "Store",
            style: TextStyle(
              fontSize: 24.0,
              color: Colors.grey,
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              size: 30.0,
              color: Colors.grey,
            ),
            onPressed: () {},
          ),
        ],
      ),
      backgroundColor: Colors.white,
      bottomSheet: CustomBottomNavigation(),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 20.0),
            width: width,
            height: height * 0.48,
            decoration: customBoxDecoration,
            child: Column(
              children: [
                // Product Details
                Container(
                  height: 200,
                  width: 200,
                  child: Placeholder(),
                ),

                SizedBox(
                  height: 20.0,
                ),
                Text(
                  firstCategory.categoryName,
                  style: TextStyle(
                    fontSize: 28.0,
                    color: Colors.grey,
                  ),
                ),

                FlatButton(
                  padding: EdgeInsets.all(10.0),
                  onPressed: () {},
                  child: Text(
                    "Browse",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              children: [
                for (var i = 1; i < foodCategory.length; i++)
                  FreshFoodCard(
                    foodItem: foodCategory[i],
                  )
              ],
            ),
          ),
          SizedBox(height: 70),
        ],
      ),
    );
  }
}
