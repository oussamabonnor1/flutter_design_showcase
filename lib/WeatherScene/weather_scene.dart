import 'package:flutter/material.dart';
import 'package:flutter_design_showcase/WeatherScene/ApiToolBox.dart';

class WeatherScene extends StatefulWidget {
  @override
  _WeatherSceneState createState() => _WeatherSceneState();
}

class _WeatherSceneState extends State<WeatherScene> {

  String time = "Loading...";
  int timer = 0;

  void getTime() async{
    ApiToolBox api = ApiToolBox();
    await api.getAPI();
    setState(() {
      time = api.time;
    });
  }

  void clock() async{
      await Future.delayed(Duration(seconds: 1));
      setState(() {
        timer ++;
      });
      clock();
  }

  @override
  void initState() {
    super.initState();
    getTime();
    clock();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Weather Scene"),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Text("$time"),
        Text("$timer"),
        ],
      ),
    );
  }
}
