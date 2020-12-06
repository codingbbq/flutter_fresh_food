import 'package:flutter/material.dart';
import 'package:flutter_fresh_food/model/model_quick_shop.dart';
import 'package:flutter_fresh_food/pages/quick_shop/quick_shop_utils/filter_nav.dart';
import 'package:flutter_fresh_food/pages/quick_shop/quick_shop_utils/shop_item_widget.dart';
import 'package:flutter_fresh_food/utils/bottom_nav.dart';
import 'package:flutter_fresh_food/utils/custom_box_decoration.dart';

class QuickShop extends StatelessWidget {
  final double _crossAxisSpacing = 10,
      _mainAxisSpacing = 15,
      _aspectRatio = 0.7;
  final int _crossAxisCount = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomSheet: CustomBottomNavigation(),
      body: Column(
        children: [
          // Header
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: customBoxDecoration,
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    Text(
                      "Quick Shop",
                      textAlign: TextAlign.center,
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

                // Filter
                FilterNav(),

                SizedBox(
                  height: 10.0,
                ),
              ],
            ),
          ),

          SizedBox(
            height: 15.0,
          ),
          //Body
          Container(
            height: MediaQuery.of(context).size.height - 230,
            width: MediaQuery.of(context).size.width,
            decoration: customBoxDecoration,
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: _crossAxisCount,
                crossAxisSpacing: _crossAxisSpacing,
                mainAxisSpacing: _mainAxisSpacing,
                childAspectRatio: _aspectRatio,
              ),
              itemCount: shopItems.length,
              itemBuilder: (context, index) =>
                  ShopItemWidget(item: shopItems[index]),
            ),
          ),
        ],
      ),
    );
  }
}
