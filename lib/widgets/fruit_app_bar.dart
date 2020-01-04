import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../app_state.dart';

class FruitAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {

    final appState = Provider.of<AppState>(context);
    final addedToCart = appState.cart;
    
    return AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.menu),
          color: Color(0xFF918b8b),
          onPressed: () {},
          iconSize: 35.0,
        ),
        actions: <Widget>[
          Stack(
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.shopping_cart),
                color: Color(0xFF918b8b),
                onPressed: () {},
                iconSize: 35.0,
              ),
              (addedToCart > 0) ? Positioned(
                width: 20,
                height: 20,
                right: 5,
                top: 5,
                child: Container(
                  padding: const EdgeInsets.only(top: 3.0),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(20.0)
                  ),
                  child: Text(
                    appState.cart.toString(), 
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12.0),
                    textAlign: TextAlign.center,
                  ),
                ),
              ) : Container()
            ],
          )
        ],
      );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
