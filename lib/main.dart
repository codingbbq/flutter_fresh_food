import 'package:flutter/material.dart';
import 'package:flutter_fresh_food/pages/sign_in/page_sign_in.dart';

void main() {
  runApp(FreshFood());
}

class FreshFood extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fresh Food UI Kit using Flutter',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {'/': (context) => SignIn()},
    );
  }
}
