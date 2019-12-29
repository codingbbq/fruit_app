import 'package:flutter/material.dart';
import 'package:fruit_app/models/fruit_new_items.dart';

class NewFruitItemsListing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
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
            );
  }
}


