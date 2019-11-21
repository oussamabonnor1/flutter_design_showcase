import 'package:flutter/material.dart';

class FitnessScene extends StatefulWidget {
  @override
  _FitnessSceneState createState() => _FitnessSceneState();
}

class _FitnessSceneState extends State<FitnessScene> {

  Widget header = Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      CircleAvatar(
        backgroundImage: AssetImage("images/instructor.png"),
        radius: 60,
      )
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fitness Showcase", style: TextStyle(color: Colors.black87),),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color(0xFFE8E8E8),
      ),
      body:
        Container(
          color: Color(0xFFE8E8E8),
          child: Column(
              children: <Widget>[
                header,
              ],
          ),
        ),
    );
  }
}
