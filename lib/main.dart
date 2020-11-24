import 'package:flutter/material.dart';
import 'package:flutter_fresh_food/pages/create_account/page_create_account.dart';
import 'package:flutter_fresh_food/pages/home/page_home.dart';
import 'package:flutter_fresh_food/pages/onboarding/page_onboarding.dart';
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
      routes: {
        '/': (context) => SignIn(),
        '/sign_in': (context) => SignIn(),
        '/create_account': (context) => CreateAccount(),
        '/onboarding': (context) => OnBoarding(),
        '/home': (context) => HomePage(),
      },
    );
  }
}
