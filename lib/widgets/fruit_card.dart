import 'package:flutter/material.dart';
import 'package:fruit_app/models/fruits.dart';

class FruitCard extends StatelessWidget {

  final Fruit fruit;

  FruitCard({ this.fruit });
  
  @override
  Widget build(BuildContext context) {
    print(fruit.color);
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.70,
        height: MediaQuery.of(context).size.height * 0.60,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0, 1],
            colors: [fruit.color[0], fruit.color[1]],
          ),
          borderRadius: BorderRadius.circular(16.0),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black54,
              blurRadius: 8.0,
              offset: Offset(0.0, 5.0),
              spreadRadius: 0.0
            )
          ]
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 15.0, left: 15.0, right: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    fruit.fruitName,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold),
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: r"$" + fruit.price.toString(),
                            style: TextStyle( fontWeight: FontWeight.bold, fontSize: 16.0)),
                        TextSpan(text: " (2kg)")
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(
                child: Placeholder(
                  fallbackWidth: 100,
                  fallbackHeight: 160,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                fruit.summary,
                maxLines: 4,
                style: TextStyle(
                  fontSize: 16.0
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Center(
              child: RaisedButton(
                padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
                color: Color.fromRGBO(0, 0, 0, 0.25),
                elevation: 0,
                child: Text("Add to Cart", style: TextStyle(color: Colors.white, fontSize: 16.0),),
                onPressed: (){},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
