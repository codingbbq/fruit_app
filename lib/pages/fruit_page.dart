import 'package:flutter/material.dart';
import 'package:fruit_app/models/fruit_new_items.dart';
import 'package:fruit_app/models/fruits.dart';
import 'package:fruit_app/widgets/fruit_card.dart';

class FruitsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.menu),
          color: Color(0xFF918b8b),
          onPressed: (){ },
          iconSize: 35.0,
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_cart),
            color: Color(0xFF918b8b),
            onPressed: (){},
            iconSize: 35.0,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Text(
                "All Fruits",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                  color: Colors.black
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  for(final fruits in allFruits) Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 5.0),
                    child: Text(
                      fruits.fruitName,
                      style: TextStyle(
                        fontSize: 18.0, color: Color(0xFFb4b4b4)
                      ),
                    ),
                  )
                ],
              ),
            ),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  for(final fruit in allFruits) FruitCard(fruit: fruit)
                ],
              ),
            ),
            SizedBox(height: 10.0,),
            Padding(
              padding: const EdgeInsets.only(top: 5, bottom: 15.0, left: 16.0, right: 16.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  color: Color(0xFFf7f7f7),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: RotatedBox(
                          quarterTurns: 3,
                          child: Text(
                            "New Items",
                            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.black),
                          ),
                        ),
                      ),
                      for(final newFruit in newFruits) Container(
                        padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0)
                        ),
                        child: Column(
                          children: <Widget>[
                            Placeholder(
                              fallbackHeight: 80,
                              fallbackWidth: 100,
                            ),
                            SizedBox(height: 5.0,),
                            Text(newFruit.fruitName),
                            SizedBox(height: 5.0,),
                            Text(r"$10.00 (2kg)")
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}