import 'package:flutter/material.dart';

class FitnessScene extends StatefulWidget {
  @override
  _FitnessSceneState createState() => _FitnessSceneState();
}

class _FitnessSceneState extends State<FitnessScene> {
  Widget header = Row(
    children: <Widget>[
      CircleAvatar(
        backgroundImage: AssetImage("images/instructor.png"),
        radius: 60,
      ),
      Expanded(
        child: Column(
          children: <Widget>[
            Text(
              "Carley Jones",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text(
                      "1280",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      "Followers",
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Text(
                      "477",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      "Following",
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      )
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Fitness Showcase",
          style: TextStyle(color: Colors.black87),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color(0xFFE8E8E8),
      ),
      body: Container(
        color: Color(0xFFE8E8E8),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16),
              child: header,
            ),
          ],
        ),
      ),
    );
  }
}
