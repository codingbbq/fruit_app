import 'package:flutter/material.dart';
import 'package:fruit_app/models/fruits.dart';
import 'package:fruit_app/widgets/fruit_card.dart';
import 'package:fruit_app/widgets/fruit_links.dart';
import 'package:fruit_app/widgets/fruit_new_items.dart';
import 'package:provider/provider.dart';

import '../app_state.dart';

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
          onPressed: () {},
          iconSize: 35.0,
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_cart),
            color: Color(0xFF918b8b),
            onPressed: () {},
            iconSize: 35.0,
          )
        ],
      ),
      body: ChangeNotifierProvider<AppState>(
        create: (_) => AppState(),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Text(
                  "All Fruits",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24.0,
                      color: Colors.black),
                ),
              ),
              Container(
                child: Consumer<AppState>(
                  builder: (context, appState, _) => SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: <Widget>[
                        for (final fruit in allFruits) FruitLinks(fruit: fruit)
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                child: Consumer<AppState>(
                  builder: (context, appState, _) => SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      for (final fruit in allFruits) FruitCard(fruit: fruit),
                    ],
                  ),
                ),
                )
              ),
              SizedBox(
                height: 10.0,
              ),
              NewFruitItemsListing(),
            ],
          ),
        ),
      ),
    );
  }
}
