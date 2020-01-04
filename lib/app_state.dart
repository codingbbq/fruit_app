import 'package:flutter/material.dart';

class AppState extends ChangeNotifier {

  int fruitId = 1;
  int cart = 0;
  bool success = false;
  List<int> cartDetails = [];

  selectFruitId(int fruitId) {
    this.fruitId = fruitId;
    notifyListeners();
  }

  addToCart(int fruitId) {
    if(!cartDetails.contains(fruitId)){
      this.cartDetails.add(fruitId);
      this.cart += 1;
      this.success = true;
    }else{
      this.success = false;
    }
    notifyListeners();
  }


}