import 'package:flutter/material.dart';
import 'package:flutter_fresh_food/model/model_quick_shop.dart';

class ShopItemWidget extends StatelessWidget {
  final Shop item;

  const ShopItemWidget({Key key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(),
      child: Column(
        children: [
          Container(
            width: 70,
            height: 70,
            child: Placeholder(),
          ),
          SizedBox(
            height: 10.0,
          ),
          Text(
            item.item,
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.grey[400],
            ),
          ),

          SizedBox(
            height: 10.0,
          ),
          // Item counter
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Plus button
                IconButton(
                  iconSize: 18.0,
                  onPressed: () {},
                  icon: Icon(
                    Icons.remove,
                    color: Colors.grey[500],
                  ),
                ),
                // Replaceable Text with item count
                Text(
                  "0",
                  style: TextStyle(
                    fontSize: 22.0,
                    color: Colors.grey,
                  ),
                ),
                // Minus button
                IconButton(
                  iconSize: 18.0,
                  onPressed: () {},
                  icon: Icon(
                    Icons.add,
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
