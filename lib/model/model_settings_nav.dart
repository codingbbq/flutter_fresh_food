import 'package:flutter/material.dart';

class SettingsNavItem {
  final Icon leading;
  final String nav;
  final Icon trailing;

  SettingsNavItem({
    this.leading,
    this.nav,
    this.trailing,
  });
}

SettingsNavItem account = SettingsNavItem(
  leading: Icon(Icons.person),
  nav: "Your Account",
  trailing: Icon(Icons.arrow_forward_ios),
);

SettingsNavItem orders = SettingsNavItem(
  leading: Icon(Icons.list),
  nav: "Your Orders",
  trailing: Icon(Icons.arrow_forward_ios),
);

SettingsNavItem chat = SettingsNavItem(
  leading: Icon(Icons.chat),
  nav: "Live Chat",
  trailing: Icon(Icons.arrow_forward_ios),
);

SettingsNavItem darkTheme = SettingsNavItem(
  leading: Icon(Icons.lightbulb_outline),
  nav: "Dart Mode",
  trailing: null,
);

SettingsNavItem signout = SettingsNavItem(
  leading: Icon(Icons.exit_to_app),
  nav: "Sign out",
  trailing: null,
);

List<SettingsNavItem> settingsList = [
  account,
  orders,
  chat,
  darkTheme,
  signout,
];
