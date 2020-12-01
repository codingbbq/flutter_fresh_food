import 'package:flutter/material.dart';

class SettingsNavItem {
  final Icon leading;
  final String nav;
  final Icon trailing;
  final String link;

  SettingsNavItem({
    this.leading,
    this.nav,
    this.trailing,
    this.link,
  });
}

SettingsNavItem account = SettingsNavItem(
  leading: Icon(Icons.person),
  nav: "Your Account",
  trailing: Icon(Icons.arrow_forward_ios),
  link: '/account',
);

SettingsNavItem orders = SettingsNavItem(
  leading: Icon(Icons.list),
  nav: "Your Orders",
  trailing: Icon(Icons.arrow_forward_ios),
  link: '/orders',
);

SettingsNavItem chat = SettingsNavItem(
  leading: Icon(Icons.chat),
  nav: "Live Chat",
  trailing: Icon(Icons.arrow_forward_ios),
  link: '/livechat',
);

SettingsNavItem darkTheme = SettingsNavItem(
  leading: Icon(Icons.lightbulb_outline),
  nav: "Dart Mode",
  trailing: Icon(Icons.adjust),
  link: '/darkmode',
);

SettingsNavItem signout = SettingsNavItem(
  leading: Icon(Icons.exit_to_app),
  nav: "Sign out",
  trailing: Icon(Icons.exit_to_app),
  link: '/signout',
);

List<SettingsNavItem> settingsList = [
  account,
  orders,
  chat,
  darkTheme,
  signout,
];
