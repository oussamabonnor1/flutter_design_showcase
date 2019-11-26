import 'package:flutter/material.dart';
import 'package:flutter_design_showcase/ShoppingScene/shopping_model.dart';
import 'package:flutter_design_showcase/ShoppingScene/shopping_scene.dart';

class ShoppingCard extends StatelessWidget {
  ShoppingModel product;

  ShoppingCard(this.product);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Column(
              children: <Widget>[
                Text(
                  product.title,
                  style: TextStyle(
                      color: ShoppingScene.textDarkColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 24),
                ),
                Text(
                  product.price.toString(),
                  style: TextStyle(
                      color: ShoppingScene.accentColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 24),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
              child: Image(
            image: product.productImage,
            fit: BoxFit.cover,
          )),
        ],
      ),
    );
  }
}
