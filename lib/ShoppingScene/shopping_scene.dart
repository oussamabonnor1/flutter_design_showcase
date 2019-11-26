import 'package:flutter/material.dart';
import 'package:flutter_design_showcase/ShoppingScene/shopping_card.dart';
import 'package:flutter_design_showcase/ShoppingScene/shopping_model.dart';

class ShoppingScene extends StatefulWidget {
  static Color backgroundColor = Color(0xFF7C9A9A);
  static Color highlightColor = Color(0xFF8CA7A2);
  static Color unselectedColor = Color(0xFF68837E);
  static Color accentColor = Color(0xFFDABBA7);
  static Color textDarkColor = Color(0xFF5E5E5E);

  @override
  _ShoppingSceneState createState() => _ShoppingSceneState();
}

class _ShoppingSceneState extends State<ShoppingScene> {
  List<String> categories = ["All", "Shoes", "Cars", "Food", "Pets", "Drinks"];
  List<ShoppingModel> products = [
    new ShoppingModel("Nike sneekers", 250, AssetImage("images/shoe1.png"))
  ];
  int selectedCategories = 0;

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
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 16, 24, 0),
              child: TextField(
                style: TextStyle(color: Colors.white, fontSize: 20),
                cursorColor: Colors.white,
                decoration: InputDecoration(
                  fillColor: ShoppingScene.highlightColor,
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: ShoppingScene.highlightColor),
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
                  hintStyle: TextStyle(color: Colors.white, fontSize: 20),
                  prefixIcon: Icon(Icons.search, color: Colors.white, size: 28),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 8, 24, 0),
              child: Container(
                height: 50,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: categories.length,
                    itemBuilder: (context, index) {
                      return index == selectedCategories
                          ? selectedCategoryCard(categories[index])
                          : unselectedCategoryCard(categories[index], index);
                    }),
              ),
            ),
            Expanded(
                child: Stack(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: SizedBox(),
                    ),
                    Expanded(
                      flex: 4,
                      child: Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24),
                          topRight: Radius.circular(24),
                        )),
                      ),
                    ),
                  ],
                ),
                ListView.builder(
                    itemCount: products.length,
                    itemBuilder: (context, index) {
                      return ShoppingCard(products[index]);
                    })
              ],
            ))
          ],
        ),
      ),
    );
  }

  Widget selectedCategoryCard(String category) {
    return GestureDetector(
      onTap: () {},
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        color: ShoppingScene.highlightColor,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 4, 16, 4),
          child: Center(
            child: Text(
              category,
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }

  Widget unselectedCategoryCard(String category, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedCategories = index;
        });
      },
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
          child: Center(
            child: Text(
              category,
              style: TextStyle(
                  color: ShoppingScene.unselectedColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }
}
