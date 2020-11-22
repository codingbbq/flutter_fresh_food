import 'package:flutter/material.dart';
import 'package:flutter_fresh_food/pages/onboarding/onboard_list/one_onboarding.dart';
import 'package:flutter_fresh_food/pages/onboarding/onboard_list/settings_onboarding.dart';
import 'package:flutter_fresh_food/pages/onboarding/onboard_list/two_onboarding.dart';

class OnBoarding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView(
        children: [
          OnBoardingOne(),
          OnBoardingTwo(),
          OnBoardingSettings(),
        ],
      ),
    );
  }
}
