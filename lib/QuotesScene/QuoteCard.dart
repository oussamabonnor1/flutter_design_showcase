import 'package:flutter/material.dart';
import 'Quote.dart';

class QuoteCard extends StatelessWidget {

  final Quote quote;

  const QuoteCard({this.quote});

  @override
  Widget build(BuildContext context) {
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
