import 'package:flutter/material.dart';
import 'package:flutter_design_showcase/CoursesScene/Course.dart';
import 'CourseCard.dart';

import 'Course.dart';

class CoursesScene extends StatefulWidget {
  @override
  _CoursesSceneState createState() => _CoursesSceneState();
}

class _CoursesSceneState extends State<CoursesScene> {
  List<Course> quotes = [
    Course(
      course: "SOMETHING",
      teacher: "someone",
      date: "today",
      color: colors[0],
    ),
    Course(
        course: "STUFF",
        teacher: "another someone",
        date: "yesterday",
        color: colors[1]),
    Course(
        course: "Haja",
        teacher: "someone new",
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
          "Courses Showcase",
          style: TextStyle(color: Colors.black87),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[300],
      ),
        body: ListView(
          scrollDirection: Axis.horizontal,
        children: quotes.map((quote) =>
            CourseCard(course: quote)).toList(),
      ),
    );
  }

}
