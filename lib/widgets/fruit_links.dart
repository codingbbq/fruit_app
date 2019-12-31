import 'package:flutter/material.dart';
import 'package:fruit_app/models/fruits.dart';
import 'package:provider/provider.dart';

import '../app_state.dart';

class FruitLinks extends StatelessWidget {
  final Fruit fruit;

  const FruitLinks({ Key key, this.fruit}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final appState = Provider.of<AppState>(context);
    final isSelected = appState.fruitId == fruit.id;

    return GestureDetector(
      onTap: () {
        if(!isSelected){
          appState.selectFruitId(fruit.id);
        }
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 5.0),
        child: Container(
          padding: const EdgeInsets.only(bottom: 5.0),
          decoration: isSelected? BoxDecoration(
            border: Border(
              bottom: BorderSide(
                width: 2.0,
                color: Colors.black
              )
            )
          ) : BoxDecoration(),
          child: Text(
            fruit.fruitName,
            style: isSelected? TextStyle(fontSize: 19.0, color: Colors.black, fontWeight: FontWeight.bold) : TextStyle(fontSize: 18.0, color: Color(0xFFb4b4b4)),
          ),
        ),
      ),
    );
  }
}
