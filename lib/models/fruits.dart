import 'package:flutter/material.dart';

class Fruit{
  final int id;
  final String fruitName;
  final double price;
  final String weight;
  final String imagePath;
  final String summary;
  final String description;
  final List<MaterialColor> color;

  Fruit({
    this.id, 
    this.fruitName, 
    this.price, 
    this.weight, 
    this.imagePath, 
    this.summary, 
    this.description,
    this.color
  });

}

final orange = Fruit(
  id: 1,
  color: [Colors.orange[900], Colors.orange[200]],
  fruitName: "Orange",
  price: 10.0,
  weight: "2Kg",
  imagePath: "assets/images/orange.png",
  summary: "Delicious and juicy orange fruit contain an impressive list of essential nutrients, vitamins, minerals for healthy growth and development and overall well-being.",
  description: "Nutrients in oranges are plentiful and diverse. The fruit is low in calories, contains no saturated fats or cholesterol, but rich in dietary fiber, pectin. Pectin, by its virtue as a bulk laxative, helps protect the mucosa of the colon by decreasing its exposure time to toxic substances as well as by binding to cancer-causing chemicals in the colon. By binding to bile acids in the colon, pectin has also been shown to reduce blood cholesterol levels by decreasing its re-absorption in the colon."
);

final banana = Fruit(
  id: 2,
  color: [Colors.lightGreen[900], Colors.lightGreen[200]],
  fruitName: "Banana",
  price: 10.0,
  weight: "2Kg",
  imagePath: "assets/images/banana.png",
  summary: "Enjoy banana fruit; nature's energy-rich food that comes with a safety envelope! Fresh, creamy, and delicious dessert bananas are one of the cheapest and readily available fruits all year round.",
  description: "Banana is one of a high caloried tropical fruits. 100 grams of its flesh carries 90 calories. Nonetheless, it packed with numerous health benefiting phytonutrients lke dietary fiber, anti-oxidants, minerals, and vitamins."
);

final pomegranate = Fruit(
  id: 3,
  color: [Colors.red[900], Colors.red[200]],
  fruitName: "Pomegranate",
  price: 10.0,
  weight: "2Kg",
  imagePath: "assets/images/pomegranate.png",
  summary: "Pomegranate fruit is one of the most popular, nutritionally rich fruit with unique flavor, taste, and heath promoting characteristics. Together with sub-arctic pigmented berries and some tropical exotics such as mango, it too has unique qualities of functional foods, often called as 'super fruits.'",
  description: "Pomegranate carries about 83 calories per 100 grams; slightly more than that of in the apples. It contains no cholesterol or saturated fats. It is a good source of soluble and insoluble dietary fibers; providing about 4 grams per 100 g (about 12% of RDA). Dietary fiber aid in smooth digestion and bowel movements."
);

final apple = Fruit(
  id: 4,
  color: [Colors.pink[900],Colors.pink[200]],
  fruitName: "Apple",
  price: 10.0,
  weight: "2Kg",
  imagePath: "assets/images/apple.png",
  summary: "Delicious and crunchy, apple fruit is one of the most popular and favorite fruits among the health conscious, fitness lovers who firmly believe in the concept of 'health is wealth.' This wonderful fruit indeed packed with rich phytonutrients that in the real sense indispensable for optimal health and wellness.",
  description: "Apples are low in calories; 100 g of fresh fruit slices provide just 50 calories. They, however, contain no saturated fats or cholesterol. Nonetheless, the fruit is rich in dietary fiber, which helps prevent absorption of dietary-LDL or bad cholesterol in the gut. The fiber also saves the colon mucous membrane from exposure to toxic substances by binding to cancer-causing chemicals inside the colon."
);

final waterMelon = Fruit(
  id: 5,
  color: [Colors.green[900], Colors.green[200]],
  fruitName: "Water melon",
  price: 10.0,
  weight: "2Kg",
  imagePath: "assets/images/water_melon.png",
  summary: "Do you wish to quench thirst while boosting your body with antioxidant lycopene and vitamin-A? Watermelon has everything you need to beat the scorching summer heat. Wonderfully delicious and juicy melons are the great source of much-needed water and electrolytes to tame hot, summer temperatures.",
  description: "Watermelon nutrition profile contains vitamin-A and lycopene, which are powerful natural antioxidants. 100 g fresh fruit provides 569 IU or 19% of daily-required levels of vitamin-A. It is one of the essential vitamins needed for healthy vision and immunity. Vitamin-A is also required for maintaining healthy mucosa and skin. Consumption of natural fruits rich in vitamin-A is known to protect from lung and oral cavity cancers."
);

final strawberry = Fruit(
  id: 6,
  color: [Colors.purple[900], Colors.purple[200]],
  fruitName: "Strawberry",
  price: 10.0,
  weight: "2Kg",
  imagePath: "assets/images/strawberry.png",
  summary: "Delicious, rich-red, sweet, yet gently tangy strawberries are among the most popular berries. These berries are native to Europe, however, nowadays cultivated in many temperate regions all over the world as important commercial crops. Botanically, the plant is a low-growing runner (creeper) belonging to the family of Rosaceae, in the genus: Fragaria.",
  description: "Strawberry is low in calories (32 cal/100 g) and fats but rich source of health-promoting phytonutrients, minerals, and vitamins that are essential for optimum health. Strawberries have significantly high amounts of phenolic flavonoid phytochemicals called anthocyanins and ellagic acid. Scientific studies show that consumption of these berries may have potential health benefits against cancer, aging, inflammation and neurological diseases."
);

final guava = Fruit(
  id: 7,
  color: [Colors.teal[900], Colors.teal[200]],
  fruitName: "Guava",
  price: 10.0,
  weight: "2Kg",
  imagePath: "assets/images/guava.png",
  summary: "Guava is an evergreen, tropical shrub or small low-growing tree probably originated in the central Americas. Guavas actually thrive well under both humid and dry climates and can tolerate brief periods of cold spells, but can only withstand a few degrees of frost. Its adaptability to ranging environments makes it a favorite commercial crop in some tropical areas.",
  description: "Guava is low in calories and fats but carry several vital vitamins, minerals, and antioxidant polyphenolic and flavonoid compounds that play a pivotal role in the prevention of cancers, aging, infections, etc. The fruit is a very rich source of soluble dietary fiber (5.4 g per 100 g of fruit, about 14% of DRA), which makes it a good bulk laxative. The fiber content helps protect the colon mucosa by decreasing exposure time to toxins as well as binding to cancer-causing chemicals in the colon."
);

final List<Fruit> allFruits = [
  orange,
  banana,
  waterMelon,
  apple,
  guava,
  pomegranate,
  strawberry
];


