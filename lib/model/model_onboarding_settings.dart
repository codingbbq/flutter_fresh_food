class OnBoardingSettings {
  final String property;
  final bool value;

  OnBoardingSettings({
    this.property,
    this.value,
  });
}

OnBoardingSettings all = OnBoardingSettings(property: "All", value: false);
OnBoardingSettings vegan = OnBoardingSettings(property: "Vegan", value: false);
OnBoardingSettings vegetarian =
    OnBoardingSettings(property: "Vegetarian", value: false);
OnBoardingSettings paleo = OnBoardingSettings(property: "Paleo", value: false);
OnBoardingSettings keto = OnBoardingSettings(property: "Keto", value: false);
OnBoardingSettings lowcarb =
    OnBoardingSettings(property: "Low Carb", value: false);

final List<OnBoardingSettings> onboardingSettingsList = [
  all,
  vegan,
  vegetarian,
  paleo,
  keto,
  lowcarb,
];
