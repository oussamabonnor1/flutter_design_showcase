import 'package:flutter/material.dart';

class WeatherScene extends StatefulWidget {
  @override
  _WeatherSceneState createState() => _WeatherSceneState();
}

class _WeatherSceneState extends State<WeatherScene> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Weather Scene"),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
    );
  }
}
