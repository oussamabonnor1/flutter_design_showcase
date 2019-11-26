import 'package:flutter/material.dart';
import 'package:flutter_design_showcase/CoursesScene/courses_scene.dart';
import 'package:flutter_design_showcase/ShoppingScene/shopping_scene.dart';
import 'package:flutter_design_showcase/WeatherScene/weather_scene.dart';
import 'package:flutter_design_showcase/FitnessScene/fitness_scene.dart';
import 'package:flutter_design_showcase/profile_scene.dart';
import 'package:flutter_design_showcase/tourism_scene.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Design Showcase",
      initialRoute: "/",
      routes: {
        "/": (context) => MainScene(),
        "/profile_scene": (context) => ProfileScene(),
        "/tourism_scene": (context) => TourismScene(),
        "/courses_scene": (context) => CoursesScene(),
        "/weather_scene": (context) => WeatherScene(),
        "/fitness_scene": (context) => FitnessScene(),
        "/shopping_scene": (context) => ShoppingScene(),
      }));
}

class MainScene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        menuButton(context, "/courses_scene", "Courses Showcase"),
        menuButton(context, "/profile_scene", "Profile Showcase"),
        menuButton(context, "/tourism_scene", "Tourism Showcase"),
        menuButton(context, "/weather_scene", "Weather Showcase"),
        menuButton(context, "/fitness_scene", "Fitness Showcase"),
        menuButton(context, "/shopping_scene", "Shopping Showcase"),
      ],
    ));
  }

  Widget menuButton(BuildContext context, String route, String text) {
    return Center(
      child: RaisedButton(
        onPressed: () {
          Navigator.pushNamed(context, route);
        },
        child: Text(text),
      ),
    );
  }
}
