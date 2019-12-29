class FruitNewItem {
  final String image;
  final double price;
  final String fruitName;
  final String weight;

  FruitNewItem({
    this.price,
    this.fruitName,
    this.image,
    this.weight
  });

}

final newWaterMelon = FruitNewItem(
  price: 10.00,
  fruitName: "Water melon",
  image: "assets/images/new_water_melon.png",
  weight: "2Kg"
);

final newKiwi = FruitNewItem(
  price: 30.00,
  fruitName: "Water melon",
  image: "assets/images/new_kiwi.png",
  weight: "2Kg"
);

final newStrawberry = FruitNewItem(
  price: 8.00,
  fruitName: "Strawberry",
  image: "assets/images/new_strawberry.png",
  weight: "1Kg"
);

final newApple = FruitNewItem(
  price: 10.00,
  fruitName: "Apple",
  image: "assets/images/new_apple.png",
  weight: "3Kg"
);

final newPineApple = FruitNewItem(
  price: 15.00,
  fruitName: "Water melon",
  image: "assets/images/new_pineapple.png",
  weight: "2Kg"
);

final List<FruitNewItem> newFruits = [
  newWaterMelon,
  newKiwi,
  newStrawberry,
  newApple,
  newPineApple,
];