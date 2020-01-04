import 'package:flutter/material.dart';

class AppState extends ChangeNotifier {

  int fruitId = 1;
  int cart = 0;
  List<int> cartDetails = [];

  selectFruitId(int fruitId) {
    this.fruitId = fruitId;
    notifyListeners();
  }

  addToCart(int fruitId) {
    if(!cartDetails.contains(fruitId)){
      this.cartDetails.add(fruitId);
      this.cart += 1;
    }
    notifyListeners();
  }


}