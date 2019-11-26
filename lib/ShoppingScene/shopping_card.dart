import 'package:flutter/material.dart';
import 'package:flutter_design_showcase/ShoppingScene/shopping_model.dart';
import 'package:flutter_design_showcase/ShoppingScene/shopping_scene.dart';

class ShoppingCard extends StatelessWidget {
  ShoppingModel product;

  ShoppingCard(this.product);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        semanticContainer: true,
        elevation: 10,
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      product.title,
                      style: TextStyle(
                          color: ShoppingScene.textDarkColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 24),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      product.info1,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: ShoppingScene.textLightColor, fontSize: 18),
                    ),
                    Text(
                      product.info2,
                      style: TextStyle(
                          color: ShoppingScene.textLightColor, fontSize: 18),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      product.price.toString() + "\$",
                      style: TextStyle(
                          color: ShoppingScene.accentColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 24),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
                flex: 3,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Image(
                    image: product.productImage,
                    fit: BoxFit.cover,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
