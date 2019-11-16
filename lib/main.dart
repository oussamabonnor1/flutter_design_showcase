import 'package:flutter/material.dart';
import 'package:flutter_design_showcase/CoursesScene/courses_scene.dart';
import 'package:flutter_design_showcase/profile_scene.dart';
import 'package:flutter_design_showcase/tourism_scene.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Flutter Design Showcase",
    home: MainScene(),
  ));
}

class MainScene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        menuButton(context, CoursesScene(), "Courses Showcase"),
        menuButton(context, ProfileScene(), "Profile Showcase"),
        menuButton(context, TourismScene(), "Tourism Showcase"),
      ],
    ));
  }

  Widget menuButton(BuildContext context, Widget scene, String text) {
    return Center(
      child: RaisedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => scene),
          );
        },
        child: Text(text),
      ),
    );
  }
}
