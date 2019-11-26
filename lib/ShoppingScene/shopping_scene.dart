import 'package:flutter/material.dart';

class ShoppingScene extends StatefulWidget {
  static Color backgroundColor = Color(0xFF7C9A9A);
  static Color highlightColor = Color(0xFF8CA7A2);

  @override
  _ShoppingSceneState createState() => _ShoppingSceneState();
}

class _ShoppingSceneState extends State<ShoppingScene> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Shop",
          style: TextStyle(color: Colors.white, fontSize: 32),
        ),
        backgroundColor: ShoppingScene.backgroundColor,
        elevation: 0,
      ),
      body: Container(
        color: ShoppingScene.backgroundColor,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
          child: Column(
            children: <Widget>[
              TextField(
                style: TextStyle(color: Colors.white, fontSize: 22),
                cursorColor: Colors.white,
                decoration: InputDecoration(
                  fillColor: ShoppingScene.highlightColor,
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: ShoppingScene.highlightColor,
                    ),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: ShoppingScene.highlightColor),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: ShoppingScene.highlightColor),
                    borderRadius: BorderRadius.circular(18),
                  ),
                  hintText: "Search",
                  hintStyle: TextStyle(color: Colors.white, fontSize: 22),
                  prefixIcon: Icon(Icons.search, color: Colors.white, size: 28),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
