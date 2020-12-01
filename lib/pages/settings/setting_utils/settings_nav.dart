import 'package:flutter/material.dart';
import 'package:flutter_fresh_food/model/model_settings_nav.dart';

class SettingsNav extends StatelessWidget {
  final SettingsNavItem navObj;

  const SettingsNav({Key key, this.navObj}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 10.0,
      ),
      padding: EdgeInsets.symmetric(
        vertical: 10.0,
        horizontal: 15.0,
      ),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          navObj.leading,
          SizedBox(
            width: 10.0,
          ),
          Text(
            navObj.nav,
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.grey,
            ),
          ),
          Spacer(),
          navObj.trailing != null
              ? IconButton(
                  icon: navObj.trailing,
                  iconSize: 16.0,
                  onPressed: () {
                    Navigator.pushNamed(context, navObj.link);
                  },
                )
              : Text(""),
        ],
      ),
    );
  }
}
