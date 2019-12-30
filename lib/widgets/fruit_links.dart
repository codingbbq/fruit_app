import 'package:flutter/material.dart';
import 'package:fruit_app/models/fruits.dart';

class FruitLinks extends StatelessWidget {
  final Fruit fruit;

  FruitLinks({this.fruit});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 5.0),
        child: Text(
          fruit.fruitName,
          style: TextStyle(fontSize: 18.0, color: Color(0xFFb4b4b4)),
        ),
      ),
    );
  }
}
