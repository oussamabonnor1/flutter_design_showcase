import 'package:flutter/material.dart';
import 'package:flutter_design_showcase/QuotesScene/Quote.dart';

import 'Quote.dart';

class QuotesScene extends StatefulWidget {
  @override
  _QuotesSceneState createState() => _QuotesSceneState();
}

class _QuotesSceneState extends State<QuotesScene> {
  List<Quote> quotes = [
    Quote(
      quote: "SOMETHING",
      author: "someone",
      date: "today",
      color: colors[0],
    ),
    Quote(
        quote: "STUFF",
        author: "another someone",
        date: "yesterday",
        color: colors[1]),
    Quote(
        quote: "Haja",
        author: "someone new",
        date: "tomorrow",
        color: colors[2]),
  ];

  static List<Color> colors = <Color>[
    Colors.grey[900],
    Colors.grey[700],
    Colors.grey[850],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(
          "Quotes Showcase",
          style: TextStyle(color: Colors.black87),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[300],
      ),
      body: Column(
        children: quotes.map((quote) => quoteCard(quote)).toList(),
      ),
    );
  }

  Widget quoteCard(Quote quote) {
    return Expanded(
      child: Card(
        color: quote.color,
        margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Center(
              child: Text(
                "By " + quote.quote,
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Center(
              child: Text(
                quote.author,
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.grey[400],
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
