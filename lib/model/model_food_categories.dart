class FreshFoodCategory {
  final int id;
  final String categoryName;
  final String categoryImg;

  FreshFoodCategory({
    this.id,
    this.categoryName,
    this.categoryImg,
  });
}

final FreshFoodCategory vegetable = FreshFoodCategory(
  id: 1,
  categoryName: "Vegetables",
  categoryImg: "assets/images/categories/001_vegetables.png",
);

final FreshFoodCategory berries = FreshFoodCategory(
  id: 2,
  categoryName: "Berries",
  categoryImg: "assets/images/categories/001_berries.png",
);

final FreshFoodCategory citrus = FreshFoodCategory(
  id: 3,
  categoryName: "Citrus",
  categoryImg: "assets/images/categories/001_citrus.png",
);

final FreshFoodCategory seasonalfruits = FreshFoodCategory(
  id: 3,
  categoryName: "Seasonal",
  categoryImg: "assets/images/categories/001_seasonal.png",
);

final List<FreshFoodCategory> freshFoodCatList = [
  vegetable,
  berries,
  citrus,
  seasonalfruits
];
