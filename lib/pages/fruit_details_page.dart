import 'package:flutter/material.dart';
import 'package:fruit_app/models/fruits.dart';

class FruitDetailsPage extends StatelessWidget {
  final Fruit fruit;

  const FruitDetailsPage({Key key, this.fruit}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: fruit.color[0],
      appBar: AppBar(
        backgroundColor: fruit.color[0],
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.white,
          iconSize: 24.0,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: <Widget>[
          IconButton(
            iconSize: 24.0,
            icon: Icon(Icons.shopping_cart),
            color: Colors.white,
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: Text(
                  fruit.fruitName,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 26.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Center(
                child: Image(
                  image: AssetImage(fruit.imagePath),
                  height: 250,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Description",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10.0,
              ),
              RichText(
                text: TextSpan(
                    text: fruit.description, style: TextStyle(fontSize: 16.0)),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: fruit.color[0],
        elevation: 0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                        text: r"$" + fruit.price.toString(),
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25.0)),
                    TextSpan(text: " (2kg)", style: TextStyle(fontSize: 20.0))
                  ],
                ),
              ),
            ),
            FlatButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25.0)
                )
              ),
              padding: const EdgeInsets.symmetric(horizontal: 26.0, vertical: 15.0),
              color: Colors.white,
              onPressed: (){},
              child: Text("Buy Now", style: TextStyle(color: fruit.color[0], fontSize: 24.0, fontWeight: FontWeight.bold),),
            )
          ],
        ),
      ),
    );
  }
}
