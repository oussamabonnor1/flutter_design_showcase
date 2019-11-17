import 'package:flutter/material.dart';
import 'package:flutter_design_showcase/CoursesScene/Course.dart';

import 'Course.dart';
import 'CourseCard.dart';

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
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Courses Showcase",
          style: TextStyle(color: Colors.black87),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16,25,16,0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "What would you like to learn?",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.grey[700],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                buildCategoryIcon(Icons.music_note, Color(0xFF67CFBD), "Music"),
                buildCategoryIcon(Icons.fitness_center, Color(0xFFEBBB99), "Fitness"),
                buildCategoryIcon(Icons.code, Color(0xFF9DC0EB), "Code"),
                buildCategoryIcon(Icons.brush, Color(0xFFF0A093), "Design"),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Available Courses",
              style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 18,
                color: Colors.grey[700],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 330,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: quotes.map((quote) => CourseCard(course: quote)).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildCategoryIcon(IconData icon, Color color, String text) {
    return Column(
      children: <Widget>[
        CircleAvatar(
          radius: 30,
          backgroundColor: color,
          child: Icon(icon,color: Colors.white, size: 30,),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            text,
            style: TextStyle(
                fontSize: 16,
                color: color,
                fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
