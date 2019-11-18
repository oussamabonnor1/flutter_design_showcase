import 'package:flutter/material.dart';

import 'Course.dart';

class CourseCard extends StatefulWidget {
  final Course course;
  final Function delete;

  const CourseCard({this.course, this.delete});

  @override
  _CourseCardState createState() => _CourseCardState();
}

class _CourseCardState extends State<CourseCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 275,
      child: Card(
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Image(
              image: AssetImage(widget.course.teacherImage),
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 16, 16, 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  IconButton(
                    icon: Icon(
                      Icons.favorite,
                      color: widget.course.liked
                          ? Colors.redAccent
                          : Colors.grey[400],
                      size: 30,
                    ),
                    onPressed: () {
                      setState(() {
                        widget.course.liked = !widget.course.liked;
                      });
                    },
                  ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Center(
                  child: Text(
                    widget.course.course,
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    softWrap: true,
                  ),
                ),
                Center(
                  child: Text(
                    "By " + widget.course.teacher,
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                      fontStyle: FontStyle.italic,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                FlatButton.icon(
                  onPressed: widget.delete,
                  icon: Icon(Icons.report),
                  label: Text("Report Course"),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
