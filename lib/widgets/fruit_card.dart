import 'package:flutter/material.dart';
import 'package:fruit_app/models/fruits.dart';

class FruitCard extends StatelessWidget {

  final Fruit fruit;

  FruitCard({ this.fruit });
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.70,
        height: MediaQuery.of(context).size.height * 0.60,
        decoration: BoxDecoration(
          color: Colors.orange,
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    fruit.fruitName,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 24.0,
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
                maxLines: 3,
                style: TextStyle(
                  fontSize: 16.0
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Center(
              child: RaisedButton(
                elevation: 0,
                child: Text("Add to Cart", style: TextStyle(color: Colors.white, fontSize: 18.0),),
                onPressed: (){},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0)
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
