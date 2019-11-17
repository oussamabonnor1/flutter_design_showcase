import 'package:flutter/cupertino.dart';

class Course{
  String course;
  String teacher;
  String teacherImage;
  String date;
  Color color;
  bool liked;

  Course({this.course, this.teacher, this.date, this.color, this.teacherImage, this.liked});
}