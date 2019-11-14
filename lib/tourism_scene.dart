
import 'package:flutter/material.dart';

class RootLayout extends StatelessWidget {
  static int starsCount = 0;

  final Widget titleWidget = Container(
    padding: EdgeInsets.only(right: 32, top: 16, bottom: 16, left: 16),
    child: Row(
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(
                  "Place du 1 er Novembre",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Text(
                "Oran, Algeria",
                style: TextStyle(color: Colors.grey),
              )
            ],
          ),
        ),
        Icon(
          Icons.star,
          color: Colors.amber,
        ),
        Text("$starsCount"),
      ],
    ),
  );

  final Widget descriptionText = Container(
    margin: EdgeInsets.all(16),
    child: Text(
      "La place du 1er Novembre 1954 (ex-place d Armes) est considéré comme le cœur historique de la ville d Oran, "
          "elle est à la croisée des chemins de plusieurs routes que vous veniez du port, du front de mer et du centre-ville."
          "En son centre, on trouve une obélisque à l effigie de l émir Abdelkader, surmontée par une sculpture nommée"
          " « La Gloire » du sculpteur français Aimé-Jules Dalou."
          "Entourant la place avec leur architecture coloniale, les majestueux"
          "édifices historiques que sont l hôtel de ville et l op"
          "éra veillent sur la place depuis plus d un siècle."
          "A noté qu une station de tramway est présente au niveau de la place.",
      softWrap: true,
    ),
  );

  Widget buildSharingButtons(IconData icon, Color color, String text) {
    return Column(
      children: <Widget>[
        Icon(
          icon,
          color: color,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            text,
            style: TextStyle(
                fontSize: 12, color: color, fontWeight: FontWeight.w400),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(children: <Widget>[
        Image.asset(
          "images/oran.jpg",
          fit: BoxFit.cover,
        ),
        titleWidget,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            buildSharingButtons(Icons.call, Colors.blue, "Call"),
            buildSharingButtons(Icons.share, Colors.blue, "Share"),
            buildSharingButtons(Icons.send, Colors.blue, "Send"),
          ],
        ),
        descriptionText,
      ]),
    );
  }
}
