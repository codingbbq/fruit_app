import 'package:flutter/material.dart';

class AppState extends ChangeNotifier {

  int fruitId = 0;

  selectFruitId(int fruitId) {
    this.fruitId = fruitId;
    notifyListeners();
  }


}